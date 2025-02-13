/**
 *  Author: Parinya Aobaun
 **/
// #include <bits/stdc++.h>
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

class bridge
{
private:
  int n = 0;
  vector<int> up;
  vector<int> down;
  vector<int> mapp;

public:
  bridge(int num)
  {
    n = num;
    up.resize(n);
    down.resize(n);
    mapp.resize(1 + n);
  }
  void init_input()
  {
    for (int i = 0; i < n; i++)
    {
      cin >> up[i];
    }
    for (int i = 0; i < n; i++)
    {
      cin >> down[i];
    }
    // map สะพานฝั่งไต้
    for (int i = 0; i < n; i++)
    {
      mapp[down[i]] = i;
    }
  }
  int solve()
  {
  }
};

signed main()
{
  fastio;

  return 0;
}