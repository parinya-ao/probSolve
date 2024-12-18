/**
 *  Author: Parinya Aobaun
 *  Created: 2024-12-17 15:01
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

const int MAX = 1001;

int N, M, H;
vector<int> adj[MAX];
bool visited[MAX];
int dist[MAX];

void add(int i, int j)
{
  adj[i].emplace_back(j);
  adj[j].emplace_back(i);
}

void init()
{
  cin >> N >> M >> H;
  int a, b;
  for (int i = 0; i < M; i++)
  {
    cin >> a >> b;
    a--;
    b--;
    add(a, b);
  }
}

void bfs(int s)
{
  queue<int> q;
  fill(visited, visited + MAX, false);
  fill(dist, dist + MAX, -1);
  q.push(s);

  visited[s] = true;
  dist[s] = 0;

  while (!q.empty())
  {
    int u = q.front();
    q.pop();
    for (auto v : adj[u])
    {
      if (!visited[v])
      {
        q.push(v);
        visited[v] = true;
        dist[v] = dist[u] + 1;
      }
    }
  }
}
// dont check H
signed main()
{
  fastio;
  init();

  int MAXXXXXXXx = 0;
  for (int i = 0; i < N; i++)
  {
    bfs(i);
    int sum = 0;
    for (int j = 0; j < N; j++)
    {
      // cout << i << " " << j << " -> " << dist[j] << "\n";
      if (dist[j] <= H && dist[j] != -1)
      {
        sum++;
      }
    }
    MAXXXXXXXx = max(MAXXXXXXXx, sum);
  }
  cout << MAXXXXXXXx << "\n";

  return 0;
}