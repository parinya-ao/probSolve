/**
 *  Author: Parinya Aobaun
 *  Created: 2025-01-20 07:02
 **/
// #include <bits/stdc++.h>
#include <algorithm>
#include <iostream>
#include <queue>
#include <vector>
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

bool isBipartite(const vector<vector<int>> &adj, const vector<bool> &exempt, int num)
{
  queue<int> q;
  vector<int> layer(num, -1);
  for (int i = 0; i < num; i++)
  {
    if (exempt[i] || layer[i] != -1)
    {
      continue;
    }
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
          if (exempt[v] == 1)
            continue;
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

signed main()
{
  fastio;
  int N, M, K;
  cin >> N >> M >> K;
  vector<vector<int>> adj(N);
  int a, b;
  for (int i = 0; i < M; i++)
  {
    cin >> a >> b;
    a--;
    b--;
    adj[a].emplace_back(b);
    adj[b].emplace_back(a);
  }
  vector<bool> exempt(N, false);
  for (int i = 0; i < N; i++)
  {
    if (adj[i].size() >= K)
    {
      exempt[i] = true;
    }
  }
  bool ans = isBipartite(adj, exempt, N);
  string output = (ans) ? "yes" : "no";
  cout << output;
  return 0;
}