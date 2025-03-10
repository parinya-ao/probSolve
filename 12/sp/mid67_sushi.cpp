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

struct point
{
  int start;
  int stop;
};

int n, limit;
int a, b;
vector<point> vec;

signed main()
{
  fastio;
  cin >> n >> limit;

  for (int i = 0; i < n; i++)
  {
    cin >> a >> b;
    if (b > limit)
    {
      cout << -1;
      return 0;
    }
    int l = max(1LL, a - (limit - b));
    int r = a + limit - b;
    vec.push_back({l, r});
  }

  sort(vec.begin(), vec.end(), [](const point &a, const point &b)
       { return a.stop < b.stop; });

  int ans = 0;
  int current_point = -INF;
  for (int i = 0; i < vec.size(); i++)
  {
    if (current_point < vec[i].start)
    {
      ans++;
      current_point = vec[i].stop;
    }
  }
  cout << ans << "\n";

  return 0;
}