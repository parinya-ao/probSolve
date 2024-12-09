/**
 *  Author: Parinya Aobaun
 *  Created: 2024-12-09 14:13
 **/
#pragma GCC optimize("Ofast")
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
  int arr[n];
  for (int i = 0; i < n; ++i)
  {
    cin >> arr[i];
  }
  vector<int> prefix_sum(n);
  prefix_sum[0] = arr[0];
  for (int i = 1; i < n; i++)
  {
    prefix_sum[i] = prefix_sum[i - 1] + arr[i];
  }

  int num;
  while (k--)
  {
    cin >> num;
    auto itr = upper_bound(all(prefix_sum), num);
    cout << (itr - prefix_sum.begin()) << "\n";
  }

  return 0;
}