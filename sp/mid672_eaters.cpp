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

signed main()
{
  fastio;
  int l, n, g;
  cin >> l >> n >> g;
  vector<vector<int>> vec(l, vector<int>(n, 0));
  // print(vec);

  for (int i = 0; i < l; i++)
  {
    for (int j = 0; j < n; j++)
    {
      cin >> vec[i][j];
    }
  }

  for (auto &i : vec)
  {
    sort(i.begin(), i.end());
  }
  // print(vec);
  // solve part
  int count = 0;
  for (int i = 0; i < l; i++)
  {
    int wight = 0;
    for (int j = 0; j < n; j++)
    {
      if (wight + vec[i][j] <= g)
      {
        count++;
        wight += vec[i][j];
      }
    }
  }

  cout << count << "\n";

  return 0;
}