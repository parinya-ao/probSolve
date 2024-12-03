/**
 *  Author: Parinya Aobaun
 *  Created: 2024-12-02 18:15
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
  set<int> s;
  int arr[n];
  for (int i = 0; i < n; ++i)
  {
    cin >> arr[i];
  }

  for (int i = 0; i < n; i++)
  {
    int sum = 0;
    for (int j = i; j < n; ++j)
    {
      sum += arr[j];
      s.insert(sum);
    }
  }
  cout << s.size() << "\n";

  return 0;
}