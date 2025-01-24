/**
 *  Author: Parinya Aobaun
 **/
// #include <bits/stdc++.h>
#include <algorithm>
#include <iostream>
#include <queue>
#include <string>
#include <vector>
using namespace std;

#define fastio                 \
  ios::sync_with_stdio(false); \
  cin.tie(NULL);
#define int long long
#define all(v) v.begin(), v.end()

void _print()
{
  cerr << "]\n";
}
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
int N, M; // node and edge
int S, T; // start and end

int bfs(vector<vector<int>> &adj, int s, int e, vector<int> &slide)
{
  int n = adj.size();
  queue<int> q;
  vector<bool> used(n);
  vector<int> d(n), p(n, -1);

  q.push(s);
  used[s] = true;
  p[s] = -1;
  while (!q.empty())
  {
    int v = q.front();
    q.pop();
    for (int u : adj[v])
    {
      if (!used[u])
      {
        used[u] = true;
        q.push(u);
        d[u] = d[v] + 1;
        p[u] = v;
      }
    }
  }
  return p[e];
}

signed main()
{
  fastio;
  cin >> N >> M >> S >> T;
  S--;
  T--;
  vector<vector<int>> adj(N);
  vector<int> side(N);

  for (int i = 0; i < N; i++)
  {
    cin >> side[i];
  }
  int a, b;

  for (int i = 0; i < M; i++)
  {
    cin >> a >> b;
    a--;
    b--;
    adj[a].emplace_back(b);
    adj[b].emplace_back(a);
  }
  cout << bfs(adj, S, T, side);

  return 0;
}