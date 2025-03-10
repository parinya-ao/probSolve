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
#define INF 1e9
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
  vector<int> m;
  int n;
  vector<int> dynamic_position;
  vector<int> best;

public:
  solve(int __n)
  {
    n = __n;
    dynamic_position.assign(n + 1, INF);
    best.assign(n + 1, INF);
    m.resize(n);
    dynamic_position[0] = 0;
    init_input();
    cout << getAns();
  }
  void init_input()
  {
    for (int i = 0; i < n; i++)
    {
      cin >> m[i];
    }
  }
  int getAns()
  {
    for (int i = 2; i <= n; i++)
    {
      for (int j = 2; j <= min(i, 10LL); ++j)
      {
        int Gmin = INF;
        int Gmax = -INF;

        for (int k = i - j; k < i; k++)
        {
          Gmin = min(Gmin, m[k]);
          Gmax = max(Gmax, m[k]);
        }
        int s = Gmax - Gmin;

        if (dynamic_position[i - j] + s < dynamic_position[i])
        {
          dynamic_position[i] = dynamic_position[i - j] + s;
          best[i] = j;
        }
        else
        {
          // do noting kub jan
        }
      }
    }
    return dynamic_position[n];
  }
};

signed main()
{
  fastio;
  int n;
  cin >> n;
  solve ans(n);

  return 0;
}