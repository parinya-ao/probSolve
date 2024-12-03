/**
 *  Author: Parinya Aobaun
 *  Created: 2024-12-02 13:44
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

  int n;
  cin >> n;
  string c;
  int num;
  list<int> list;
  while (n--)
  {
    cin >> c;
    if (c == "li")
    {
      cin >> num;
      list.push_front(num);
    }
    else if (c == "ri")
    {
      cin >> num;
      list.push_back(num);
    }
    else if (c == "lr")
    {
      if (list.empty())
      {
        continue;
      }
      int num = list.front();
      list.pop_front();
      list.push_back(num);
    }
    else if (c == "rr")
    {
      if (list.empty())
      {
        continue;
      }
      int num = list.back();
      list.pop_back();
      list.push_front(num);
    }
  }
  show_list(list);
  return 0;
}