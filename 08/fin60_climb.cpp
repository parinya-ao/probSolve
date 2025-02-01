#include <iostream>
#include <set>
#include <vector>

using namespace std;

const int MAX_N = 100010;
const int INF = 1e9;

int n, m;
vector<int> adj[MAX_N];
vector<int> weights[MAX_N];
int deg[MAX_N];

void read_input()
{
  cin >> n >> m;
  // Initialize degrees to 0
  for (int u = 0; u < n; u++)
  {
    deg[u] = 0;
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

vector<int> dijkstra(int start)
{
  vector<int> dist(n, INF);
  vector<bool> visited(n, false);
  set<pair<int, int>> pq;

  dist[start] = 0;
  pq.insert({0, start});

  while (!pq.empty())
  {
    int u = pq.begin()->second;
    pq.erase(pq.begin());

    if (visited[u])
      continue;
    visited[u] = true;

    for (int i = 0; i < deg[u]; i++)
    {
      int v = adj[u][i];
      int w = weights[u][i];

      if (dist[v] > dist[u] + w)
      {
        dist[v] = dist[u] + w;
        pq.insert({dist[v], v});
      }
    }
  }
  return dist;
}

int main()
{
  ios_base::sync_with_stdio(false);
  cin.tie(0);

  read_input();
  vector<int> distances = dijkstra(0); // Start from vertex 0

  // Print distance to last vertex
  cout << distances[n - 1] << '\n';

  return 0;
}