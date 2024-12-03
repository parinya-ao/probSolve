/**
 *  Author: Parinya Aobaun
 *  Created: 2024-12-02 12:57
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

void show_list(list<int> l)
{
  for (auto em : l)
  {
    cout << em << "\n";
  }
  cout << endl;
}

signed main()
{
  fastio;
  list<int> list;

  int n;
  cin >> n;

  char c;
  int num;
  while (n--)
  {
    cin >> c >> num;
    if (c == 'I')
    {
      list.push_front(num);
    }
    else if (c == 'D')
    {
      num--;
      if (num < list.size())
      {
        auto itr = list.begin();
        advance(itr, num);
        list.erase(itr);
      }
    }
  }
  show_list(list);
  return 0;
}