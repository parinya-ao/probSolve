/**
 *  Author: Parinya Aobaun
 **/
#pragma GCC optimize("O3")
#pragma GCC optimization("Ofast,unroll-loops")
#include <bits/stdc++.h>
using namespace std;

#define fastio                 \
  ios::sync_with_stdio(false); \
  cin.tie(NULL);
#define all(v) v.begin(), v.end()
#define INF 1e18
#define MAX_N 100005
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

int n;
vector<int> vec;
int three = 0, two = 0;

signed main()
{
  fastio;
  cin.tie(0);
  cout.tie(0);
  cin >> n;
  vec.resize(n);

  for (int i = 0; i < n; i++)
    cin >> vec[i];

  int cache = *max_element(all(vec));
  int cache_index = *find(vec.begin(), vec.end(), cache);
  vector<int> m(n);
  for (int i = 0; i < n; i++)
  {
    if (cache_index >= i)
    {
      cache = *max_element(vec.begin() + i, vec.end());
      cache_index = *find(vec.begin() + i, vec.end(), cache);
    }
    m[i] = cache;
  }
  // print(m);

  for (int i = 0; i < n - 1; i++)
  {
    int xj = m[i];

    int xi = vec[i];
    if (xj >= 3 * xi)
    {
      three++;
    }
    else if (xj >= 2 * xi)
    {
      two++;
    }
  }
  cout << three << " " << two << "\n";

  return 0;
}