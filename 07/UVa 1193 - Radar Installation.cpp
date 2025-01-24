#include <algorithm>
#include <climits> // For LLONG_MAX
#include <cmath>
#include <iostream>
#include <queue>
#include <string>
#include <vector>
using namespace std;

#define fastio                 \
  ios::sync_with_stdio(false); \
  cin.tie(NULL);

#define int long long
#define all(v) v.begin(), v.end()

void _print()
{
  cerr << "]\n";
}

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

signed main()
{
  fastio;
  int n, d, caseNumber = 0;

  while (cin >> n >> d && n != 0)
  {
    // Clear the vector for each new test case
    vector<pair<double, double>> pdd;
    bool possible = true;

    for (int i = 0; i < n; i++)
    {
      int x, y;
      cin >> x >> y;
      if (y > d)
      {
        possible = false;
      }
      else
      {
        double dis = sqrt((long double)d * d - (long double)y * y);
        pdd.push_back({x - dis, x + dis});
      }
    }

    if (!possible)
    {
      cout << "Case " << ++caseNumber << ": -1\n";
      continue;
    }

    sort(all(pdd), [](const auto &a, const auto &b)
         { return a.second < b.second; });

    int res = 0;
    double last = -1.0 * LLONG_MAX; // Use a very large negative value

    for (auto &range : pdd)
    {
      if (range.first > last)
      {
        ++res;
        last = range.second;
      }
    }

    cout << "Case " << ++caseNumber << ": " << res << '\n';
  }

  return 0;
}