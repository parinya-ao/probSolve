/**
 *   author: Parinya Aobaun
 *   created: 2024-11-26 16:57
 **/
#pragma GCC optimize("Ofast,unroll-loops")
#pragma GCC target("sse,sse2,sse3,ssse3,sse4,avx,avx2,fma")
#include <bits/stdc++.h>
using namespace std;

#define fastio                      \
  ios_base::sync_with_stdio(false); \
  cin.tie(NULL);                    \
  cout.tie(NULL);
#define ll long long
#define ull unsigned long long
#define ld long double
#define pb push_back
#define pf push_front
#define mp make_pair
#define all(v) v.begin(), v.end()
#define rall(v) v.rbegin(), v.rend()
#define pii pair<int, int>
#define pll pair<ll, ll>
#define vi vector<int>
#define vll vector<ll>
#define umap unordered_map
#define uset unordered_set
#define fi first
#define se second
// Debugging macros
#define debug(x) cerr << #x << " = " << (x) << endl;
#define debugv(v)      \
  cerr << #v << " = "; \
  for (auto &i : v)    \
    cerr << i << " ";  \
  cerr << endl;

// Constants
const int MOD = 1e9 + 7;
const int INF = 1e9;
const ll LINF = 1e18;
const ld EPS = 1e-9;

// Utility Functions
template <typename T>
bool chmin(T &a, T b) { return b < a ? a = b, true : false; }
template <typename T>
bool chmax(T &a, T b) { return b > a ? a = b, true : false; }

// GCD and LCM
ll gcd(ll a, ll b) { return b ? gcd(b, a % b) : a; }
ll lcm(ll a, ll b) { return a / gcd(a, b) * b; }

// Modular Arithmetic
ll mod_add(ll a, ll b, ll m = MOD) { return (a + b) % m; }
ll mod_sub(ll a, ll b, ll m = MOD) { return (a - b + m) % m; }
ll mod_mul(ll a, ll b, ll m = MOD) { return (a * b) % m; }
ll mod_pow(ll base, ll exp, ll m = MOD)
{
  ll res = 1;
  while (exp)
  {
    if (exp & 1)
      res = (res * base) % m;
    base = (base * base) % m;
    exp >>= 1;
  }
  return res;
}

int main()
{
  fastio;
#define n 3

  int arr[3] = {0, 0, 0};

  for (int i = 0; i < n; i++)
  {
    cin >> arr[i];
  }

  int a;
  cin >> a;
  unordered_map<int, int> m;
  for (int i = 0; i < a; ++i)
  {
    int num;
    cin >> num;
    m[num]++;
  }

  int min_cost = INF;
  for (const auto &item : m)
  {
    int type = item.first;
    int count = item.second;
    int cost = count * arr[type - 1];
    chmin(min_cost, cost);
  }

  cout << min_cost;

  // debug(min_cost);
  // debug zone
  // for (auto i : m)
  // {
  //   cout << i.fi << " " << i.se << "\n";
  // }

  return 0;
}
// write a function to calculate fcatorial
