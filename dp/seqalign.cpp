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
#define MAX_N 410
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
expalin using dynamic programing
define dp[i][j] is ค่าใช้จ่ายที่น้อยที่สุดของ x[i] และ y[j]
base case:
dp[i][0] = dp[0][0] = dp[0][j] = 0
recurrence relation
for i >= 1 un j >= 1
dp[i][j] = min(
  dp[i-1][j-1] + (x[i-1] == y[i-1] ? 0 : 1) // เพิ่มมาถ้าเหมือนไม่บวกถ้าไม่เหมือน +1
  dp[i-1][j] + 1 //space
  dp[i][j-1] + 1 //space
)
*/
vector<vector<int>> dp(MAX_N, vector<int>(MAX_N, 0));
string x, y;

void solve()
{
  int n = x.length();
  int m = y.length();

  for (int i = 0; i <= n; i++)
  {
    dp[i][0] = i;
  }
  for (int j = 0; j <= m; j++)
  {
    dp[0][j] = j;
  }

  for (int i = 1; i <= n; ++i)
  {
    for (int j = 1; j <= m; ++j)
    {
      int match = 0;
      if (x[i - 1] != y[j - 1])
      {
        match = 1;
      }
      else if (x[i - 1] == y[j - 1])
      {
        match = 0;
      }
      int skip_x = dp[i - 1][j] + 1;
      int skip_y = dp[i][j - 1] + 1;
      dp[i][j] = min({dp[i - 1][j - 1] + match, skip_x, skip_y});
    }
  }
  // print(dp);
  cout << dp[n][m];
}

signed main()
{
  fastio;
  cin >> x >> y;
  solve();

  return 0;
}