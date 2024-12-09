/**
 *  Author: Parinya Aobaun
 *  Created: 2024-12-09 13:35
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

  int n, m;
  cin >> n >> m;
  set<int> s;
  int num;
  while (n--)
  {
    cin >> num;
    s.insert(num);
  }
  for (int i = 0; i < m; ++i)
  {
    cin >> num;
    auto itr = s.lower_bound(num);
    if (itr == s.end())
    {
      cout << *prev(itr) << "\n";
      continue;
    }
    else if (itr == s.begin())
    {
      cout << *itr << "\n";
      continue;
    }
    else
    {
      // auto itr2 = s.upper_bound(num);
      // if (abs((*itr2) - num) < abs((*itr) - num))
      // {
      //   cout << (*itr2) << "\n";
      //   continue;
      // }
      // cout << (*itr) << "\n";
      // continue;
      auto lower_val = *prev(itr);
      auto higher = *itr;

      if (abs(higher - num) < abs(lower_val - num))
      {
        cout << higher << "\n";
      }
      else
      {
        cout << lower_val << "\n";
      }
    }
  }

  return 0;
}