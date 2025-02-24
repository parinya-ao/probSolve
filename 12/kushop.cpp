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
  int n;
  vector<int> p;
  vector<int> m;

public:
  solve(int _n)
  {
    n = _n;
    p.resize(n);
    m.resize(n);
    fill(all(m), 0);
  }

  void init()
  {
    for (int i = 0; i < n; i++)
    {
      cin >> p[i];
    }
  }

  int getAns()
  {
    m[0] = p[0];
    m[1] = max(p[0], p[1]);
    for (int i = 2; i < n; i++)
    {
      if (p[i] + m[i - 2] > m[i - 1])
      {
        m[i] = p[i] + m[i - 2];
      }
      else
      {
        m[i] = m[i - 1];
      }
    }
    return m[n - 1];
  }
};

signed main()
{
  fastio;
  int n;
  cin >> n;
  solve a(n);
  a.init();

  cout << a.getAns();

  return 0;
}