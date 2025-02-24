/**
 *  Author: Parinya Aobaun
 **/
#include <algorithm>
#include <iostream>
#include <vector>
using namespace std;

#define fastio                 \
  ios::sync_with_stdio(false); \
  cin.tie(NULL);
#define int long long

class Solve
{
private:
  int n;
  vector<int> p;
  vector<int> dp;

public:
  Solve(int _n) : n(_n)
  {
    p.resize(n);
    dp.assign(n, 0);
  }

  void init()
  {
    for (int i = 0; i < n; i++)
    {
      cin >> p[i];
    }
  }

  int getAns()
  {
    // For i from 4 to n-1, try every possible segment ending at i
    for (int i = 4; i < n; i++)
    {
      for (int j = 0; j <= i - 4; j++)
      {
        // Find maximum in segment [j, i]
        int maxVal = *max_element(p.begin() + j, p.begin() + i + 1);
        int prev = (j > 0 ? dp[j - 1] : 0);
        dp[i] = max(dp[i], prev + maxVal);
      }
      // Also propagate the best answer so far.
      if (i > 0)
        dp[i] = max(dp[i], dp[i - 1]);
    }
    return dp[n - 1];
  }
};

signed main()
{
  fastio;
  int n;
  cin >> n;
  Solve solver(n);
  solver.init();
  cout << solver.getAns();
  return 0;
}