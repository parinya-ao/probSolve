/**
 *  Author: Parinya Aobaun
 **/
#include "probelib.h"
#include <bits/stdc++.h>
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

class solve
{
private:
  int n = 0;
  int MAX = 23;

  int binary_search(int left, int right, int &count)
  {
    if (count >= MAX)
    {
      return -1;
    }
    if (left == right)
    {
      return left;
    }
    int mid = left + (right - left) / 2;
    count++;
    if (probe_check(left, mid))
    {
      return binary_search(left, mid, count);
    }
    else
    {
      return binary_search(mid + 1, right, count);
    }
  }

public:
  solve(int _n)
  {
    n = _n;
  }
  int getAns()
  {
    int count = 0;
    int ans = binary_search(0, n - 1, count);
    return ans;
  }
};

signed
main()
{
  fastio;
  int n = probe_init();
  solve Solver(n);
  int ans = Solver.getAns();

  probe_answer(ans);

  return 0;
}