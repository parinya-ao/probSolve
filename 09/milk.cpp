/**
 *  Author: Parinya Aobaun
 **/
//#include <bits/stdc++.h>
#include <algorithm>
#include <climits>
#include <iostream>
#include <queue>
#include <set>
#include <string>
#include <vector>
using namespace std;

#define fastio                 \
  ios::sync_with_stdio(false); \
  cin.tie(NULL);
#define int long long
#define all(v) v.begin(), v.end()
#define INF LLONG_MAX
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

class solve
{
private:
  static const int MAXN = 100010;
  vector<int> parent;
  int n, q;

public:
  solve() : parent(MAXN, -1){};
  void input(int _n, int _q)
  {
    this->n = _n;
    this->q = _q;
  }

  void init_input()
  {
    char qeustion;
    int a, b;
    for (int i = 1; i <= q; i++)
    {
      cin >> qeustion >> a >> b;
      if (qeustion == 'q')
      {
        // อยู่กลุ่มเดียวกันไหม
        if (findSet(a) == findSet(b))
        {
          printf("yes\n");
        }
        else if (findSet(a) != findSet(b))
        {
          printf("no\n");
        }
      }
      if (qeustion == 'c')
      {
        unionSet(a, b);
      }
    }
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
};

signed main()
{
  fastio;
  int n, q;
  cin >> n >> q;
  solve ans;
  ans.input(n, q);
  ans.init_input();

  return 0;
}