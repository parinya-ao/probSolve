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
dp[i] คือจำนวนคนที่ไม่ได้รับอาหารต่ำแหน่งที่ i
ต้องการน้อยสุด
base case
i = 0= dp[0][j]
*/
int n, w;
vector<int> human;
vector<vector<int>> dp;

void solve()
{
  dp.assign(n + 1, vector<int>(w + 1, INF));
  for (int j = 0; j <= w; j++)
  {
    dp[0][j] = 0;
  }
  for (int i = 1; i <= n; i++)
  {
    for (int j = 0; j <= w; j++)
    {
      // แจก
      if (j >= human[i - 1])
        dp[i][j] = min(dp[i][j], dp[i - 1][j - human[i - 1]]);
      // ไม่แจก
      dp[i][j] = min(dp[i][j], dp[i - 1][j] + human[i - 1]);
      // ไปเติมของก่อนเดี๊ยวมา
      if (i >= 2)
        dp[i][j] = min(dp[i][j], dp[i - 1][w] + human[i - 1]);
    }
  }
  int ans = INF;
  for (int j = 0; j <= w; j++)
  {
    ans = min(ans, dp[n][j]);
  }
  cout << ans << "\n";
}

signed main()
{
  fastio;
  cin >> n >> w;
  human.resize(n);
  for (int i = 0; i < n; i++)
  {
    cin >> human[i];
  }
  solve();

  return 0;
}