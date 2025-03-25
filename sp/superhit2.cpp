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
#define INF 1e9
#define MAX_N 10010
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

signed main()
{
  fastio;
  set<int> s;
  int l, n, k;
  cin >> l >> n >> k;
  map<int, int> m;
  vector<int> A;
  A.resize(1 + l);
  for (int i = 1; i <= l; i++)
  {
    cin >> A[i];
  }
  // print(A); // check
  int num;
  for (int i = 0; i < n; i++)
  {
    cin >> num;
    m[num]++;
  }

  // print(m); // check

  vector<pair<int, int>> vec(m.begin(), m.end());
  sort(vec.rbegin(), vec.rend(), [](const pair<int, int> &a, const pair<int, int> &b)
       { return a.second < b.second; });

  for (int i = 0; i < vec.size(); i++)
  {
    s.insert(vec[i].first);
  }

  vector<int> ansswerwrwrwer;
  for (int i = 1; i <= l; i++)
  {
    int val = A[i];
    if (s.find(A[i]) != s.end())
    {
      s.erase(A[i]);
      for (int j = 0; j < n; j++)
      {
        if (i == vec[j].first)
        {
          // ansswerwrwrwer.push_back(vec[j].first);
          ansswerwrwrwer.push_back(i);
          break;
        }
      }
    }
  }

  // print(ansswerwrwrwer);
  // print(vec); // check
  for (int i = 0; i < k; i++)
  {
    // cout << vec[i].first << "\n";
    if (ansswerwrwrwer[i] == 0)
    {
      return 0;
    }
    if (i == k - 1)
    {
      cout << ansswerwrwrwer[i];
    }
    else
    {
      cout << ansswerwrwrwer[i] << "\n";
    }
  }

  return 0;
}