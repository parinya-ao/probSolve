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

/*
define dp[i] คือ score มากสุดในตำแหน่ง i
dp[i] = max(dp[i], maxi_n scoure[j]+dp[i])
*/
int n, k;
int height, score;
vector<int> dp;
vector<pair<int, int>> vec;

void solve()
{
  for (int i = 0; i < n; i++)
  {
    dp[i] = vec[i].second;
  }

  for (int i = 0; i < n; i++)
  {
    for (int j = i + 1; j < n; j++)
    {
      if (vec[j].first <= vec[i].first and vec[i].first - vec[j].first <= k)
      {
        dp[j] = max(dp[j], dp[i] + vec[j].second);
      }
    }
  }
  // print(dp);
  cout << *max_element(all(dp)) << "\n";
}

signed main()
{
  fastio;
  cin >> n >> k;
  vec.resize(n);
  dp.assign(n, 0);
  for (int i = 0; i < n; i++)
  {
    // cin h[i] and s[i]
    cin >> vec[i].first >> vec[i].second;
  }
  // print(vec);
  solve();

  return 0;
}