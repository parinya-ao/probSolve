#include <iostream>
#include <set>
#include <vector>
using namespace std;

static const int MAX_N = 1000010;
static const int INF = 1000000000;

int n, m;
vector<int> adj[MAX_N];
vector<int> weights[MAX_N];
int deg[MAX_N];

bool visited[MAX_N];
int distArr[MAX_N];

void readInput()
{
  ios::sync_with_stdio(false);
  cin.tie(nullptr);

  cin >> n >> m;

  for (int i = 0; i < n; i++)
  {
    adj[i].clear();
    weights[i].clear();
    deg[i] = 0;
  }

  for (int i = 0; i < m; i++)
  {
    int a, b, w;
    cin >> a >> b >> w;
    a--;
    b--;
    adj[a].push_back(b);
    weights[a].push_back(w);
    deg[a]++;

    adj[b].push_back(a);
    weights[b].push_back(w);
    deg[b]++;
  }
}

void dijkstra(int start)
{
  for (int i = 0; i < n; i++)
  {
    visited[i] = false;
    distArr[i] = INF;
  }
  distArr[start] = 0;

  set<pair<int, int>> pq;
  pq.insert({0, start});

  for (int i = 0; i < n; i++)
  {
    if (pq.empty())
      return;

    int u;
    do
    {
      if (pq.empty())
        return;
      auto it = pq.begin();
      u = it->second;
      pq.erase(it);
    } while (visited[u]);

    visited[u] = true;

    for (int j = 0; j < deg[u]; j++)
    {
      int v = adj[u][j];
      int w = weights[u][j];

      if (distArr[u] + w < distArr[v])
      {
        distArr[v] = distArr[u] + w;
        pq.insert({distArr[v], v});
      }
    }
  }
}

void solve()
{
  readInput();
  dijkstra(0);
  cout << distArr[n - 1] << "\n";
}

int main()
{
  solve();
  return 0;
}