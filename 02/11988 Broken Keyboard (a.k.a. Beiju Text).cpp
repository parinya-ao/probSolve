/**
 *  Author: Parinya Aobaun
 *  Created: 2024-12-05 07:21
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

int arr[1010];

bool checkOrder(stack<int> &s, int t, int c, int n)
{
  if (t == n)
    return s.empty();
  if (!s.empty() && s.top() == arr[t])
  {
    s.pop();
    return checkOrder(s, t + 1, c, n);
  }
  if (c <= n)
  {
    s.emplace(c);
    return checkOrder(s, t, c + 1, n);
  }
  return false;
}

void solve(int n)
{
  while (1)
  {
    cin >> arr[0];
    if (arr[0] == 0)
    {
      cout << endl;
      break;
    }
    for (int i = 1; i < n; ++i)
    {
      cin >> arr[i];
    }

    stack<int> s;
    if (checkOrder(s, 0, 1, n))
    {
      cout << "Yes" << "\n";
    }
    else
    {
      cout << "No" << "\n";
    }
  }
}

signed main()
{
  fastio;

  int n;
  while (cin >> n)
  {
    if (n == 0)
    {
      break;
    }
    solve(n);
  }

  return 0;
}
