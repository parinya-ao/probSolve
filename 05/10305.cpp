/**
 *  Author: Parinya Aobaun
 *  Created: 2024-12-30 17:39
 **/
#include <bits/stdc++.h>
using namespace std;

#define fastio                 \
  ios::sync_with_stdio(false); \
  cin.tie(NULL);
#define int int_fast64_t
// typedef int = long long;
#define all(v) v.begin(), v.end()

void _print() { cerr << "]\n"; }
template <typename T, typename V>
void print(const pair<T, V> &p);
template <typename T>
void print(const T &x);

void print(int x) { cerr << x; }
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

int n, m;
int total_task = 0;

void topological_order(vector<vector<int>> &adj, int N)
{
  queue<int> q;
  vector<int> result;
  vector<int> indegree(N + 1, 0);

  for (int i = 1; i <= N; i++)
  {
    for (auto u : adj[i])
    {
      indegree[u]++;
    }
  }

  for (int i = 1; i <= N; i++)
  {
    if (indegree[i] == 0)
    {
      q.push(i);
    }
  }

  while (!q.empty())
  {
    int u = q.front();
    q.pop();
    result.push_back(u);

    for (auto v : adj[u])
    {
      indegree[v]--;
      if (indegree[v] == 0)
      {
        q.push(v);
      }
    }
  }

  for (int i = 0; i < result.size(); i++)
  {
    if (i > 0)
      cout << " ";
    cout << result[i];
  }
  cout << "\n";
}

signed main()
{
  fastio;
  int n, m;

  while (true)
  {
    cin >> n >> m;
    if (n == 0 && m == 0)
      break;

    vector<vector<int>> adj(n + 1);

    for (int i = 0; i < m; i++)
    {
      int a, b;
      cin >> a >> b;
      adj[a].push_back(b);
    }

    topological_order(adj, n);
  }

  return 0;
}