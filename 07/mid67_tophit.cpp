#include <bits/stdc++.h>
using namespace std;
#define fastio                 \
  ios::sync_with_stdio(false); \
  cin.tie(NULL);
#define int long long
struct Compare
{
  bool operator()(const pair<int, int> &a, const pair<int, int> &b) const
  {
    if (a.first == b.first)
      return a.second < b.second;
    return a.first > b.first;
  }
};
class solve
{
private:
  int N, M, L, vote;
  unordered_map<int, int> freq;
  set<pair<int, int>, Compare> freqSet;
  queue<int> window;
  int globalBestFreq = 0, globalBestBook = -1;

public:
  solve(int _N, int _M, int _L) : N(_N), M(_M), L(_L)
  {
    globalBestBook = L + 1;
  }
  pair<int, int> getAns()
  {
    for (int i = 0; i < N; i++)
    {
      cin >> vote;
      window.push(vote);
      int oldFreq = freq[vote];
      if (oldFreq > 0)
      {
        freqSet.erase({oldFreq, vote});
      }
      freq[vote] = oldFreq + 1;
      freqSet.insert({freq[vote], vote});
      if (window.size() > M)
      {
        int rem = window.front();
        window.pop();
        int curFreq = freq[rem];
        freqSet.erase({curFreq, rem});
        freq[rem] = curFreq - 1;
        if (freq[rem] == 0)
          freq.erase(rem);
        else
          freqSet.insert({freq[rem], rem});
      }
      if (window.size() == M)
      {
        auto cur = *freqSet.begin();
        if (cur.first > globalBestFreq || (cur.first == globalBestFreq && cur.second < globalBestBook))
        {
          globalBestFreq = cur.first;
          globalBestBook = cur.second;
        }
      }
    }
    return {globalBestBook, globalBestFreq};
  }
};
signed main()
{
  fastio;
  int N, M, L;
  cin >> N >> M >> L;
  solve s(N, M, L);
  auto result = s.getAns();
  cout << result.first << " " << result.second << "\n";
  return 0;
}