#pragma GCC optimize("Ofast,unroll-loops")
#include <bits/stdc++.h>
using namespace std;

int main()
{
  ios_base::sync_with_stdio(false);
  cin.tie(NULL);

  int n;
  cin >> n;
  vector<int> mapping(n + 1);
  for (int i = 1; i <= n; i++)
  {
    cin >> mapping[i];
  }

  vector<int> visited(n + 1, 0);
  int rounds = 0;

  for (int i = 1; i <= n; i++)
  {
    if (visited[i] == 0)
    {
      int current = i;
      int cycle_length = 0;

      while (visited[current] == 0)
      {
        visited[current] = 1;
        current = mapping[current];
        cycle_length++;
      }
      rounds = max(rounds, cycle_length);
    }
  }

  cout << rounds << "\n";
  return 0;
}
