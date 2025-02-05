/**
 *  Author: Parinya Aobaun
 **/
#include <bits/stdc++.h>
using namespace std;

#define fastio                 \
  ios::sync_with_stdio(false); \
  cin.tie(NULL);
#define int long long
#define all(v) v.begin(), v.end()
#define INF LLONG_MAX
#define Pii pair<int, int>
#define MAX_N 10010
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
class mst
{
private:
  int Vertex = 0, Edge = 0;
  int Va = 0, Vb = 0, Wight = 0;
  vector<vector<Pii>> adj;
  vector<int> parent;
  int ans = 0;

public:
  mst(int Vertex, int Edge)
  {
    this->Vertex = Vertex;
    this->Edge = Edge;
    this->adj.resize(Vertex);
    this->parent.resize(Vertex, -1);
  }
  void init_input()
  {
    for (int i = 0; i < Edge; i++)
    {
      cin >> Va >> Vb >> Wight;
      Va--;
      Vb--;
      addEdge(Va, Vb, Wight);
    }
  }
  void addEdge(int Va, int Vb, int Wight)
  {
    // adj vertex wight
    adj[Va].push_back({Vb, Wight});
    adj[Vb].push_back({Va, Wight});
  }

  int findSet(int x)
  {
    if (parent[x] < 0)
      return x;
    return parent[x] = findSet(parent[x]);
  }

  void unionSet(int x, int y)
  {
    int rx = findSet(x);
    int ry = findSet(y);
    if (rx == ry)
      return;
    if (parent[rx] < parent[ry])
    {
      parent[ry] = rx;
    }
    else if (parent[ry] < parent[rx])
    {
      parent[rx] = ry;
    }
    else
    {
      parent[ry] = rx;
      parent[rx]--;
    }
  }
  // mst algortihm kruskal algorithm and return mst
  int kruskal()
  {
    // create heap all edgeorder by wights;
    priority_queue<tuple<int, int, int>, vector<tuple<int, int, int>>, greater<tuple<int, int, int>>> heap;

    for (int u = 0; u < Vertex; ++u)
    {
      for (auto &[v, w] : adj[u])
      {
        if (u < v)
        {
          heap.push({w, u, v});
        }
      }
    }
    vector<pair<int, int>> path_mst; // Va, Vb
    while (!heap.empty() && path_mst.size() < Vertex - 1)
    {
      auto [wight, a, b] = heap.top();
      heap.pop();

      if (findSet(a) != findSet(b))
      {
        path_mst.push_back({a, b});
        unionSet(a, b);
        ans += wight;
      }
    }
    return ans;
  }
};

signed main()
{
  fastio;
  int N, M;
  cin >> N >> M;
  mst solve(N, M);
  solve.init_input();
  cout << solve.kruskal() << "\n";

  return 0;
}