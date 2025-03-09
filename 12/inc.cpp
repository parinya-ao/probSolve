/**
 *  Author: Parinya Aobaun
 **/
#include <bits/stdc++.h>
using namespace std;

#define fastio                 \
  ios::sync_with_stdio(false); \
  cin.tie(NULL);
#define int long long
#define all(v) v.begin(), v.end()
void _print() { cerr << "]\n"; }
template <typename T, typename V>
void print(const pair<T, V> &p);
template <typename T>
void print(const T &x);

void print(int x) { cerr << x; }
void print(long x) { cerr << x; }
void print(unsigned x) { cerr << x; }
void print(unsigned long x) { cerr << x; }
void print(unsigned long long x) { cerr << x; }
void print(float x) { cerr << x; }
void print(double x) { cerr << x; }
void print(long double x) { cerr << x; }
void print(char x) { cerr << '\'' << x << '\''; }
void print(const char *x) { cerr << '"' << x << '"'; }
void print(const string &x) { cerr << '"' << x << '"'; }
void print(bool x) { cerr << (x ? "true" : "false"); }

template <typename T, typename V>
void print(const pair<T, V> &p)
{
  cerr << "{";
  print(p.first);
  cerr << ", ";
  print(p.second);
  cerr << "}";
}

template <typename T>
void print(const T &x)
{
  int f = 0;
  cerr << "[";
  for (auto &i : x)
  {
    if (f++)
      cerr << ", ";
    print(i);
  }
  cerr << "]";
}
#define debug(x...)             \
  cerr << "[" << #x << "] = ["; \
  _print(x)
#define INF 129323

class Solve
{
private:
  int n;
  vector<int> x;
  vector<int> dp; // คิดเลขเต็บบบ
public:
  Solve(int _n)
  {
    n = _n;
    x.assign(n + 1, -INF);
    dp.assign(n + 1, 0);
  }
  void init_input()
  {
    for (int i = 1; i <= n; i++)
    {
      cin >> x[i];
    }
  }
  vector<int> getAns()
  {
    for (int i = 1; i <= n; i++)
    {
      for (int j = 1; j < i; j++)
      {
        if (x[i] > x[j])
        {
          dp[i] = max(1 + dp[j], dp[i]);
        }
      }
    }
    auto m_element = *max_element(all(dp));
    vector<int> ans;
    for (int i = n; i >= 1; i--)
    {
      if (dp[i] == m_element)
      {
        m_element--;
        // cout << x[i] << " ";
        ans.push_back(x[i]);
      }
    }
    reverse(all(ans));

    return ans;
  }
};

signed main()
{
  fastio;
  int n;
  cin >> n;
  Solve ans(n);
  ans.init_input();
  auto answer = ans.getAns();
  cout << answer.size() << "\n";
  for (auto val : answer)
  {
    cout << val << " ";
  }

  return 0;
}