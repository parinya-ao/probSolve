/**
 *  Author: Parinya Aobaun
 *  Created: 2024-12-23 13:07
 **/
#include <bits/stdc++.h>
using namespace std;

#define fastio                 \
  ios::sync_with_stdio(false); \
  cin.tie(NULL);
#define int long long
#define all(v) v.begin(), v.end()

void _print() { cerr << "]\n"; }
template <typename T, typename V>
void print(const pair<T, V> &p);
template <typename T>
void print(const T &x);

void print(int x) { cerr << x; }
void print(long x) { cerr << x; }
void print(unsigned x) { cerr << x; }
void print(unsigned long x) { cerr << x; }
void print(unsigned long long x) { cerr << x; }
void print(float x) { cerr << x; }
void print(double x) { cerr << x; }
void print(long double x) { cerr << x; }
void print(char x) { cerr << '\'' << x << '\''; }
void print(const char *x) { cerr << '"' << x << '"'; }
void print(const string &x) { cerr << '"' << x << '"'; }
void print(bool x) { cerr << (x ? "true" : "false"); }

template <typename T, typename V>
void print(const pair<T, V> &p)
{
  cerr << "{";
  print(p.first);
  cerr << ", ";
  print(p.second);
  cerr << "}";
}

template <typename T>
void print(const T &x)
{
  int f = 0;
  cerr << "[";
  for (auto &i : x)
  {
    if (f++)
      cerr << ", ";
    print(i);
  }
  cerr << "]";
}

#define debug(x...)             \
  cerr << "[" << #x << "] = ["; \
  _print(x)

int N, M;

signed main()
{
  fastio;
  cin >> N >> M;
  vector<vector<int>> adj(N);
  for (int i = 0; i < M; i++)
  {
    int u, v;
    cin >> u >> v;
    u--;
    v--;
    adj[u].emplace_back(v);
  }

  queue<int> q;
  vector<int> result;
  vector<int> indegree(N, 0);
  // count degreee
  for (int i = 0; i < N; i++)
  {
    for (auto u : adj[i])
    {
      indegree[u]++;
    }
  }
  // push graph first topol
  for (int i = 0; i < N; i++)
  {
    if (indegree[i] == 0)
    {
      q.push(i);
    }
  }
  // bfs
  while (!q.empty())
  {
    int u = q.front();
    q.pop();
    result.emplace_back(u);
    for (auto v : adj[u])
    {
      indegree[v]--;
      if (indegree[v] == 0)
      {
        q.push(v);
      }
    }
  }
  if (result.size() != N)
  {
    cout << "no\n";
  }
  else
  {
    for (auto i : result)
    {
      cout << 1 + i << "\n";
    }
  }

  return 0;
}