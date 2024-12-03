/**
 *  Author: Parinya Aobaun
 *  Created: 2024-12-02 15:45
 **/
#pragma GCC optimize("Ofast,unroll-loops,no-stack-protector,fast-math")
#pragma GCC target("sse,sse2,sse3,ssse3,sse4,avx,avx2,fma")
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
  int n;
  cin >> n;
  vector<pair<int, int>> arr(n);
  for (int i = 0; i < n; ++i)
  {
    cin >> arr[i].first >> arr[i].second;
  }

  int maxeff = 0;
  int count = 0;

  for (int i = n - 1; i >= 0; --i)
  {
    if (arr[i].second <= maxeff)
    {
      ++count;
    }
    else
    {
      maxeff = arr[i].second;
    }
  }
  cout << count << "\n";

  return 0;
}