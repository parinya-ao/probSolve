/**
 *  Author: Parinya Aobaun
 *  Created: 2024-12-23 12:30
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

int K, M, N;
int u, v;

bool isBipartite(const vector<vector<int>> &adj, int num)
{
  queue<int> q;
  vector<int> layer(num, -1);
  for (int i = 0; i < num; i++)
  {
    // if don't check
    if (layer[i] == -1)
    {
      layer[i] = 0; // check
      q.push(i);
      while (!q.empty())
      {
        int u = q.front();
        q.pop();
        for (auto v : adj[u])
        {
          if (layer[v] == -1)
          {
            layer[v] = 1 - layer[u];
            q.push(v);
          }
          else if (layer[v] == layer[u])
          {
            return false;
          }
        }
      }
    }
  }
  return true;
}

void solve()
{
  cin >> N >> M;
  vector<pair<int, int>> edge(M);
  for (int i = 0; i < M; i++)
  {
    cin >> edge[i].first >> edge[i].second;
    edge[i].first--;
    edge[i].second--;
  }
  // binary search
  int l = 0, r = M, max = 0;
  while (l <= r)
  {
    int m = (l + r) / 2;
    vector<vector<int>> adj(N, vector<int>());
    for (int i = 0; i < m; ++i)
    {
      adj[edge[i].first].emplace_back(edge[i].second);
      adj[edge[i].second].emplace_back(edge[i].first);
    }
    if (isBipartite(adj, N))
    {
      max = m;
      l = m + 1;
    }
    else
    {
      r = m - 1;
    }
  }
  cout << max << "\n";
}

signed main()
{
  fastio;
  K = 1;
  while (K--)
  {
    solve();
  }
  return 0;
}