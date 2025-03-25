#include <bits/stdc++.h>
// #include <iostream>
// #include <vector>
// #include <set>
// #include <algorithm>
// #include <climits>

using namespace std;

const int INF = 1e9;

class Graph
{
  int n;                              // Number of vertices
  vector<vector<pair<int, int>>> adj; // Adjacency list: {vertex, weight}

public:
  Graph(int n) : n(n), adj(n) {}

  void addEdge(int a, int b, int w)
  {
    a--;
    b--;
    adj[a].push_back({b, w});
    adj[b].push_back({a, w});
  }

  vector<int> dijkstra(int start)
  {
    vector<int> dist(n, INF);
    vector<bool> visited(n, false);
    set<pair<int, int>> pq; // {distance, vertex}

    dist[start] = 0;
    pq.insert({0, start});

    while (!pq.empty())
    {
      int u = pq.begin()->second;
      pq.erase(pq.begin());

      if (visited[u])
        continue;
      visited[u] = true;

      for (auto &edge : adj[u])
      {
        int v = edge.first;
        int w = edge.second;

        if (dist[v] > dist[u] + w)
        {
          dist[v] = dist[u] + w;
          pq.insert({dist[v], v});
        }
      }
    }
    return dist;
  }
};

int main()
{
  ios_base::sync_with_stdio(false);
  cin.tie(0);

  int n, m;
  cin >> n >> m;

  Graph graph(n);

  for (int i = 0; i < m; i++)
  {
    int a, b, w;
    cin >> a >> b >> w;
    graph.addEdge(a, b, w);
  }

  vector<int> distances = graph.dijkstra(0); // Start from vertex 0

  cout << distances[n - 1] << '\n';

  return 0;
}