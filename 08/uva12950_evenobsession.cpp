#include <bits/stdc++.h>

using namespace std;

const int MAX_N = 100010;
const int INF = 1e9;

int n, m;
vector<int> adj[MAX_N];
vector<int> weights[MAX_N];
int deg[MAX_N];

class State
{
private:
  int cost;
  int vertex;
  int parity;

public:
  State(int cost, int vertex, int parity)
      : cost(cost), vertex(vertex), parity(parity) {}

  int getCost() const { return cost; }
  int getVertex() const { return vertex; }
  int getParity() const { return parity; }

  bool operator<(const State &other) const
  {
    if (cost != other.cost)
      return cost < other.cost;
    if (vertex != other.vertex)
      return vertex < other.vertex;
    return parity < other.parity;
  }
};

void read_input()
{
  for (int u = 0; u < n; u++)
  {
    deg[u] = 0;
    adj[u].clear();
    weights[u].clear();
  }
  // Read edges
  for (int i = 0; i < m; i++)
  {
    int a, b, w;
    cin >> a >> b >> w;
    // Convert to 0-based indexing
    a--;
    b--;
    // Add edges for undirected graph
    adj[a].push_back(b);
    adj[b].push_back(a);
    weights[a].push_back(w);
    weights[b].push_back(w);
    deg[a]++;
    deg[b]++;
  }
}

int dijkstra()
{
  vector<vector<int>> dist(n, vector<int>(2, INF));
  set<State> pq; // {distance, vertex}

  dist[0][0] = 0;
  pq.insert(State(0, 0, 0));

  while (!pq.empty())
  {
    State current = *pq.begin();
    pq.erase(pq.begin());

    int u = current.getVertex();
    int currentParity = current.getParity();
    int currentCost = current.getCost();

    if (currentCost > dist[u][currentParity])
    {
      continue;
    }
    for (int i = 0; i < deg[u]; ++i)
    {
      int v = adj[u][i];                  // ไปทุก node
      int w = weights[u][i];              // ดูทุก wight
      int nextParity = 1 - currentParity; // เพื่อนตรงข้าม

      if (dist[v][nextParity] > currentCost + w)
      {
        dist[v][nextParity] = currentCost + w;
        pq.insert(State(dist[v][nextParity], v, nextParity));
      }
    }
  }
  return dist[n - 1][0] == INF ? -1 : dist[n - 1][0];
}

int main()
{
  ios_base::sync_with_stdio(false);
  cin.tie(0);
  while (cin >> n >> m)
  {
    read_input();
    int distances = dijkstra(); // Start from vertex 0
    cout << distances << "\n";
  }

  return 0;
}