#include <cmath>
#include <iostream>
#include <list>
#include <vector>

using namespace std;

const int MAX_N = 1002; // append start and stop

int N, R;
vector<pair<int, int>> point;
vector<int> adj[MAX_N];
// check view
bool visited[MAX_N];
int dist[MAX_N]; // count total distance

void read_input()
{
  cin >> N >> R;
  R = pow(R, 2);
  int a, b;
  point.emplace_back(make_pair(0, 0)); // im start from 0, 0
  while (N--)
  {
    cin >> a >> b;
    point.emplace_back(make_pair(a, b));
  }
  point.emplace_back(make_pair(100, 100)); // stop from 100, 100
}

int find_distance(int i, int j)
{
  int x0 = point[i].first, x1 = point[j].first;
  int y0 = point[i].second, y1 = point[j].second;
  return pow(x1 - x0, 2) + pow(y1 - y0, 2);
}

void build_graph()
{
  for (int i = 0; i < point.size(); ++i)
  {
    for (int j = i + 1; j < point.size(); ++j)
    {
      if (find_distance(i, j) <= R)
      {
        adj[i].emplace_back(j);
        adj[j].emplace_back(i);
      }
    }
  }
}

int bfs(int s)
{
  list<int> Q;
  fill(visited, visited + MAX_N, false);
  fill(dist, dist + MAX_N, -1);
  Q.push_back(s);

  visited[s] = true;
  dist[s] = 0;

  int target = point.size() - 1;
  while (!Q.empty())
  {
    int u = Q.front();
    Q.pop_front();
    if (u == target)
    {
      return dist[u];
    }
    for (auto v : adj[u])
    {
      if (!visited[v])
      {
        Q.push_back(v);
        visited[v] = true;
        dist[v] = dist[u] + 1;
      }
    }
  }
  return -1;
}

int main()
{
  read_input();
  build_graph();
  cout << bfs(0);
}
