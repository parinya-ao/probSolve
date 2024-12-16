/**
 *  Author: Parinya Aobaun
 *  Created: 2024-12-16 13:50
 **/
#include <bits/stdc++.h>
using namespace std;

#define fastio                 \
  ios::sync_with_stdio(false); \
  cin.tie(NULL);
#define int long long
#define all(v) v.begin(), v.end()
void print(int x) { cerr << x; }
void print(double x) { cerr << x; }
void print(char x) { cerr << '\'' << x << '\''; }
void print(const string &x) { cerr << '"' << x << '"'; }
void print(bool x) { cerr << (x ? "true" : "false"); }

#define debug(x...)             \
  cerr << "[" << #x << "] = ["; \
  _print(x);                    \
  cerr << "]" << endl;

template <typename T>
void _print(T t)
{
  cerr << t;
}

template <typename T, typename... V>
void _print(T t, V... v)
{
  _print(t);
  cerr << ", ";
  _print(v...);
}

const int N = 1e5 + 10;
vector<int> adj[N];
bool visited[N];

void bfs(int s)
{
  queue<int> q;
  q.push(s);
  visited[s] = true;

  while (!q.empty())
  {
    int v = q.front();
    q.pop();
    for (int n : adj[v])
    {
      if (!visited[n])
      {
        q.push(n);
        visited[n] = true;
      }
    }
  }
}

signed main()
{
  fastio;
  int n, m;
  cin >> n >> m;
  memset(visited, 0, sizeof(visited));
  for (int i = 0; i < m; ++i)
  {
    int u, v;
    cin >> u >> v;
    adj[u].emplace_back(v);
    adj[v].emplace_back(u);
  }
  int result = 0;
  for (int i = 1; i <= n; ++i)
  {
    if (!visited[i])
    {
      bfs(i);
      result++;
    }
  }
  cout << result << "\n";

  return 0;
}