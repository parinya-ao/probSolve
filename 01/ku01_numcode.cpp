/*
LANG: C++
*/
/**
 *   author: Parinya Aobaun
 *   created: 2024-11-27 17:59
 **/
#pragma GCC optimize("Ofast,unroll-loops")
#pragma GCC target("sse,sse2,sse3,ssse3,sse4,avx,avx2,fma")
#include <bits/stdc++.h>
using namespace std;

#define fastio                      \
  ios_base::sync_with_stdio(false); \
  cin.tie(NULL);                    \
  cout.tie(NULL);
#define int long long
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
#define debug(x) cerr << #x << " = " << (x) << endl;
#define debugv(v)      \
  cerr << #v << " = "; \
  for (auto &i : v)    \
    cerr << i << " ";  \
  cerr << endl;

const int MOD = 1e9 + 7;
const int INF = 1e9;
const ll LINF = 1e18;
const ld EPS = 1e-9;

template <typename T>
bool chmin(T &a, T b) { return b < a ? a = b, true : false; }
template <typename T>
bool chmax(T &a, T b) { return b > a ? a = b, true : false; }

ll gcd(ll a, ll b) { return b ? gcd(b, a % b) : a; }
ll lcm(ll a, ll b) { return a / gcd(a, b) * b; }

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

signed main()
{
  fastio;

  int n, t;
  cin >> n >> t;
  vi input(n);
  for (int i = 0; i < n; i++)
  {
    cin >> input[i];
  }

  vi X(n), Y(n), Z(n);

  if (t == 1)
  {
    Y = input;
    int P_Y = n;
    for (int i = 0; i < n; ++i)
    {
      int D = Y[i] - P_Y;
      if (D == 1)
        X[i] = 1;
      else if (D == -1)
        X[i] = 0;
      else
        return 1;
      P_Y = Y[i];
    }
  }
  else if (t == 2)
  {
    Z = input;
    Y[0] = Z[0];
    for (int i = 1; i < n; ++i)
    {
      ll Z_i = Z[i];
      ll P_Y = Y[i - 1];
      ll Y_i;

      Y_i = Z_i - 2 * P_Y;
      if (Y_i > P_Y)
      {
        Y[i] = Y_i;
      }
      else
      {
        Y_i = Z_i - P_Y;
        if (Y_i <= P_Y)
        {
          Y[i] = Y_i;
        }
        else
        {
          return 1;
        }
      }
    }

    int P_Y_final = n;
    for (int i = 0; i < n; ++i)
    {
      int D = Y[i] - P_Y_final;
      if (D == 1)
        X[i] = 1;
      else if (D == -1)
        X[i] = 0;
      else
        return 1;
      P_Y_final = Y[i];
    }
  }
  else
  {
    return 1;
  }

  for (auto x : X)
  {
    cout << x << "\n";
  }

  return 0;
}
