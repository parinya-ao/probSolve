#include <bits/stdc++.h>

using namespace std;

class Solve
{
private:
    int n;
    vector<int> vec;
    vector<int> memo;

public:
    Solve()
    {
        input();
        // getAns();
    }
    void input()
    {
        cin >> n;
        vec.resize(n);
        for (int i = 0; i < n; i++)
        {
            cin >> vec[i];
        }
        memo.resize(n);
        memo.assign(n, -1);
    }
    int getmax(int l, int r)
    {
        int mx = -39123;
        for (int i = l; i <= r; ++i)
        {
            mx = max(vec[i], mx);
        }
        return mx;
    }
    int dp(int i)
    {
        if (i < 5)
            return 0;
        if (memo[i] != -1)
            return memo[i];

        int best = 0;
        for (int k = 5; k < i; k++)
        {
            best = max(best, dp(i - k) + getmax(i - k + 1, i));
        }
        return best;
    }
    int getAns()
    {
        return dp(n - 1);
    }
};

int main()
{
    Solve result;
    cout << result.getAns();
    return 0;
};
