/**
 *  Author: Parinya Aobaun
 *  Created: 2024-12-09 13:15
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

void add(map<int, int> &mp)
{
  int a, b;
  cin >> a >> b;
  mp[a] += b;
  return;
}

void ask(map<int, int> &mp)
{
  int t;
  cin >> t;
  cout << mp[t] << '\n';
}

void del(map<int, int> &mp)
{
  int a, b;
  cin >> a >> b;
  if (mp[a] >= b)
  {
    mp[a] -= b;
    cout << b;
  }
  else
  {
    cout << mp[a];
    mp[a] = 0;
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
  while (n--)
  {
    cin >> num;
    if (num == 1)
    {
      add(mp);
    }
    else if (num == 2)
    {
      ask(mp);
    }
    else if (num == 3)
    {
      del(mp);
    }
  }

  return 0;
}