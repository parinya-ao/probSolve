/**
 *  Author: Parinya Aobaun
 *  Created: 2024-12-09 08:05
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

bool cmp(pair<int, int> &a, pair<int, int> &b)
{
  if (a.second != b.second)
    return a.second > b.second;
  return a.first < b.first;
}

signed main()
{
  fastio;
  int n = 0, num = 0;
  map<int, int> mp;
  cin >> n;
  while (n--)
  {
    cin >> num;
    mp[num]++;
  }

  vector<pair<int, int>> vec(mp.begin(), mp.end());
  sort(vec.begin(), vec.end(), cmp);

  for (auto &i : vec)
  {
    // cout << i.first << " : " << i.second << "\n";
    cout << i.first << "\n";
  }

  return 0;
}