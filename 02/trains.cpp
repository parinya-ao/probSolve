/**
 *  Author: Parinya Aobaun
 *  Created: 2024-12-02 15:22
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

list<int> arr[1000000];

signed main()
{
  int n;
  fastio;
  cin >> n;
  char c;
  while (n--)
  {
    cin >> c;
    if (c == 'N')
    {
      int x, i;
      cin >> x >> i;
      arr[i].emplace_back(x);
    }
    else if (c == 'M')
    {
      int i, j;
      cin >> i >> j;
      arr[j].splice(arr[j].end(), arr[i]);
    }
  }
  for (int a = 0; a < 1000000; a++)
  {
    for (auto &x : arr[a])
    {
      cout << x << "\n";
    }
  }
  return 0;
}