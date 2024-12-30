/**
 *  Author: Parinya Aobaun
 *  Created: 2024-12-30 19:22
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

int N = 0, M = 0;
int S = 0, T = 0;
int A, B, C;

struct Edge
{
  int to;
  int color;
};

int topological_sort(vector<vector<Edge>> &adj, int start, int end)
{
  vector<vector<bool>> visited(N + 1, vector<bool>(3, false));
  queue<tuple<int, int, int>> q;

  q.push(make_tuple(start, 0, 0));
  visited[S][0] = true; // no color

  while (!q.empty())
  {
    // base case
    auto [now, color, step] = q.front();
    q.pop();
    if (now == end)
    {
      return step;
    }
    // work case
    for (const auto &u : adj[now])
    {
      int next = u.to;
      int bridge_color = u.color;
      int new_color = color;

      if (bridge_color == 0)
      {
        new_color = bridge_color;
      }
      else
      {
        if (color == 0)
        {
          new_color = bridge_color;
        }
        else if (color != bridge_color)
        {
          continue;
        }
      }
      if (!visited[next][new_color])
      {
        visited[next][new_color] = true;
        q.push(make_tuple(next, new_color, step + 1));
      }
    }
    // cout << step << "\n";
  }
  return -1;
}

signed main()
{
  fastio;
  cin >> N >> M >> S >> T;
  vector<vector<Edge>> adj(1 + N);
  while (M--)
  {
    cin >> A >> B >> C;
    adj[A].emplace_back(Edge{B, C});
    adj[B].emplace_back(Edge{A, C});
  }
  // print(adj);
  cout << topological_sort(adj, S, T);

  return 0;
}