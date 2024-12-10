/**
 *  Author: Parinya Aobaun
 *  Created: 2024-12-10 18:13
 **/
#include <bits/stdc++.h>
using namespace std;

#define fastio                 \
  ios::sync_with_stdio(false); \
  cin.tie(NULL);
#define int long long
#define all(v) v.begin(), v.end()
#define pb push_back
#define mp make_pair
#define ff first
#define ss second

const int MOD = 1e9 + 7;
const int INF = 1e18;

void print(int x) { cerr << x; }
void print(double x) { cerr << x; }
void print(char x) { cerr << '\'' << x << '\''; }
void print(const string &x) { cerr << '"' << x << '"'; }
void print(bool x) { cerr << (x ? "true" : "false"); }

template <typename T, typename V>
void print(const pair<T, V> &x)
{
  cerr << '{';
  print(x.first);
  cerr << ',';
  print(x.second);
  cerr << '}';
}
template <typename T>
void print(const T &x)
{
  int f = 0;
  cerr << '{';
  for (auto &i : x)
    cerr << (f++ ? "," : ""), print(i);
  cerr << "}";
}

#define debug(x...)             \
  cerr << "[" << #x << "] = ["; \
  _print(x)
template <typename T>
void _print(T t)
{
  print(t);
  cerr << "]\n";
}
template <typename T, typename... V>
void _print(T t, V... v)
{
  print(t);
  cerr << ", ";
  _print(v...);
}

signed main()
{
  // detect การกดไลค์มากสุด
  // ถ้ากดไลค์เท่ากันให้เอาการลดไลค์ ครั้งล่าสุด
  fastio;
  int n = 0;
  cin >> n;
  int num = 0, option = 0;
  map<int, int> mp;
  vector<int> dislike;
  while (n--)
  {
    cin >> option >> num;
    // ถ้า option = 1 กดไลค์
    // ถ้า option = 0 dislike
    if (option)
    {
      // case like
      mp[num]++;
    }
    else
    {
      // case dislike
      mp[num]--;
      dislike.emplace_back(num);
    }
    // checkcase
    int maxlike = -INF;
    int maxNum = -1;
    for (auto &p : mp)
    {
      if (p.second > maxlike)
      {
        maxlike = p.second;
        maxNum = p.first;
      }
      else if (p.second == maxNum)
      {
        // ถูก dislike ไหม
        if (!dislike.empty() && p.first == dislike.back())
          maxNum = p.first;
      }
    }
    cout << maxNum << "\n";
  }
  // print(mp);

  return 0;
}