/**
 *  Author: Parinya Aobaun
 *  Created: 2025-01-19 19:07
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

vector<int> solve(vector<vector<int>> &adj, vector<int> &wh, vector<int> &fc)
{
  int n = adj.size();
  vector<int> dist(n, -1);
  queue<int> q;
  // view all warehouses
  for (auto w : wh)
  {
    dist[w] = 0;
    q.push(w);
  }
  while (!q.empty())
  {
    int u = q.front();
    q.pop();
    for (auto v : adj[u])
    {
      if (dist[v] == -1)
      {
        dist[v] = dist[u] + 1;
        q.push(v);
      }
    }
  }
  vector<int> result(fc.size());
  for (int i = 0; i < fc.size(); i++)
  {
    result[i] = dist[fc[i]];
  }
  return result;
}

signed main()
{
  fastio;
  int N, M, S, T;
  cin >> N >> M >> S >> T;
  // create graph
  vector<vector<int>> adj(N + 1);
  int s, t;
  for (int i = 0; i < M; i++)
  {
    cin >> s >> t;
    adj[s].emplace_back(t);
    adj[t].emplace_back(s);
  }
  // warehouse
  vector<int> wh(S);
  int num;
  for (int i = 0; i < S; i++)
  {
    cin >> num;
    wh[i] = num;
  }

  // factory
  vector<int> fc(T);
  for (int i = 0; i < T; i++)
  {
    cin >> num;
    fc[i] = num;
  }

  // solve code
  vector<int> result = solve(adj, wh, fc);
  for (auto ans : result)
  {
    cout << ans << "\n";
  }

  return 0;
}