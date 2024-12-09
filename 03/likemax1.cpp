/**
 *  Author: Parinya Aobaun
 *  Created: 2024-12-09 14:57
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

void debugMap(map<int, int> &m)
{
  for (auto &i : m)
  {
    cout << i.first << " : " << i.second << "\n";
  }
  cout << "\n";
}

signed main()
{
  fastio;
  int n;
  cin >> n;
  int num;
  map<int, int> mp;
  int currentMax = 0;
  int currentStatus = 0;

  while (n--)
  {
    cin >> num;
    mp[num]++;
    if (mp[num] > currentMax)
    {
      currentMax = mp[num];
      currentStatus = num;
    }
    else if (mp[num] == currentMax)
    {
      currentStatus = num;
    }
    cout << currentStatus << "\n";
  }

  return 0;
}