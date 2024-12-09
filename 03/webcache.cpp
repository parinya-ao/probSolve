/**
 *  Author: Parinya Aobaun
 *  Created: 2024-12-09 15:41
 **/
#include <bits/stdc++.h>
using namespace std;

#define fastio                 \
  ios::sync_with_stdio(false); \
  cin.tie(NULL);
#define int long long
#define all(v) v.begin(), v.end()

const int MOD = 1e9 + 7;
const int INF = 1e18;

template <typename T>
inline bool chmin(T &a, const T &b)
{
  return b < a ? a = b, true : false;
}

template <typename T>
inline bool chmax(T &a, const T &b)
{
  return b > a ? a = b, true : false;
}

int gcd_custom(int a, int b) { return b == 0 ? a : gcd_custom(b, a % b); }

signed main()
{
  fastio;
  int n, k;
  cin >> n >> k;
  set<int> s;
  int num;
  while (n--)
  {
    cin >> num;
    if (s.size() > 3)
    {
    }
  }

  return 0;
}