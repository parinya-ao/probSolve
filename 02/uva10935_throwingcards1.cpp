/**
 *  Author: Parinya Aobaun
 *  Created: 2024-12-02 18:29
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

void debug_list(list<int> l)
{
  for (auto em : l)
  {
    cout << em << " ";
  }
  cout << endl;
}

void solve(int n)
{
  list<int> l;
  for (int i = 1; i <= n; ++i)
  {
    l.emplace_back(i);
  }
  cout << "\nDiscarded cards: ";
  while (l.size() != 1)
  {
    if (l.size() != 2)
    {
      cout << l.front() << ", ";
    }
    else
    {
      cout << l.front() << "\n";
    }
    l.pop_front();
    l.emplace_back(l.front());
    l.pop_front();
  }
  cout << "Remaining card: " << l.front();
}

signed main()
{
  fastio;
  int n;

  while (1)
  {
    cin >> n;
    if (n == 0)
      break;
    else
    {
      solve(n);
    }
  }

  return 0;
}