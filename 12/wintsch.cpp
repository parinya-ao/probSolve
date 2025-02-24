#include <bits/stdc++.h>
using namespace std;

#define fastio                 \
  ios::sync_with_stdio(false); \
  cin.tie(nullptr)
#define int long long
#define all(v) v.begin(), v.end()
#define MAX_N 1005

class solve
{
private:
  int n;
  vector<array<int, 3>> jobs;
  vector<int> dp;
  vector<int> prevJob;
  vector<int> result;

public:
  explicit solve(int _n) : n(_n)
  {
    jobs.resize(n);
    dp.resize(n);
    prevJob.assign(n, -1);
    result.reserve(n);
  }

  void init()
  {
    for (int i = 0; i < n; i++)
    {
      cin >> jobs[i][0] >> jobs[i][1] >> jobs[i][2];
    }
  }

  int findLatestNonConflict(int idx)
  {
    for (int j = idx - 1; j >= 0; j--)
    {
      if (jobs[j][1] <= jobs[idx][0])
      {
        return j;
      }
    }
    return -1;
  }

  void getAns()
  {
    dp[0] = jobs[0][2];

    for (int i = 1; i < n; i++)
    {
      int prev = findLatestNonConflict(i);
      int inclProfit = jobs[i][2];
      if (prev != -1)
      {
        inclProfit += dp[prev];
      }
      int exclProfit = dp[i - 1];
      dp[i] = max(inclProfit, exclProfit);

      if (inclProfit > exclProfit)
      {
        prevJob[i] = prev;
      }
      else
      {
        prevJob[i] = prevJob[i - 1];
      }
    }

    int i = n - 1;
    while (i >= 0)
    {
      if (i == 0 || dp[i] != dp[i - 1])
      {
        result.push_back(i + 1);
        i = prevJob[i];
      }
      else
      {
        i--;
      }
    }

    cout << dp[n - 1] << '\n';
    cout << result.size() << '\n';
    for (int job : result)
    {
      cout << job << ' ';
    }
    cout << '\n';
  }
};

signed main()
{
  fastio;
  int n;
  cin >> n;
  if (n < 1 || n > 1000)
    return 0;

  solve problem(n);
  problem.init();
  problem.getAns();

  return 0;
}