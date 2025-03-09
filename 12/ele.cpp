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

//
class solve
{
private:
  int n;          // n ตัว
  vector<int> dp; // dp ใน index ที่ i คือคะแนนสูงสุดที่ก้านกล้วยทำได้
  vector<int> s;  // s[i] คือจำนวนที่ i
public:
  solve(int _n)
  {
    n = _n;
    n++;
    dp.assign(n, 0);
    s.resize(n);
  }
  void init_input()
  {
    for (int i = 0; i < n; i++)
    {
      cin >> s[i];
    }
  }
  int getAns()
  {
    // base case kub
    if (n < 3)
      return 0;

    dp[0] = 0;
    dp[1] = 0;
    dp[2] = 0;
    for (int i = 3; i < n; i++)
    {
      dp[i] = max(dp[i - 3] + s[i - 1], dp[i - 1]);
    }
    return dp[n - 1];
  }
};

signed main()
{
  fastio;
  int n;
  cin >> n;
  // n++;
  solve ans(n);
  ans.init_input(); // work input
  cout << ans.getAns();

  return 0;
}