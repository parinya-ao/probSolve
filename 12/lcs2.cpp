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

string s, t;
void solve(string s, string t)
{
  int n = s.length();
  int m = t.length();

  vector<vector<int>> dp(n + 1, vector<int>(m + 1, 0));

  for (int i = 1; i <= n; i++)
  {
    for (int j = 1; j <= m; j++)
    {
      // iam start from 1 i is -1
      // พิจารณาจากตัวแรก
      // recurence relation คือ max(1+dp(i-1,j-1), dp(i-1, j), dp(i, j-1)) จะพิจารณา
      // 1+dp(i-1, j-1) เมื่อ s[i-1] == t[j-1]
      if (s[i - 1] == t[j - 1])
      {
        dp[i][j] = dp[i - 1][j - 1] + 1;
      }
      else
      {
        dp[i][j] = max(dp[i - 1][j], dp[i][j - 1]);
      }
    }
  }
  cout << dp[n][m] << "\n";
  vector<char> ans;
  int i = n, j = m;
  while (i != 0 and j != 0)
  {
    if (s[i - 1] == t[j - 1])
    {
      ans.push_back(s[i - 1]);
      i--;
      j--;
    }
    else if (dp[i - 1][j] >= dp[i][j - 1])
    {
      i--;
    }
    else
    {
      j--;
    }
  }
  for (int a = ans.size() - 1; a >= 0; a--)
  {
    cout << ans[a];
  }
}

signed main()
{
  fastio;
  cin >> s;
  cin >> t;

  solve(s, t);

  return 0;
}