#include <bits/stdc++.h>
using namespace std;

int main()
{
  ios::sync_with_stdio(false);
  cin.tie(NULL);

  int N;
  cin >> N; // O(1) - Reading input

  vector<int> F(N);
  for (int &x : F)
  {
    cin >> x; // O(N) - Reading array elements
  }

  // Initialize frequency array
  vector<int> freq(N, 0); // O(N) - Initialization

  for (int j = 0; j < N; ++j)
  {
    // Calculate required shift for each dish
    int s = (F[j] - (j + 1) + N) % N; // O(1) per iteration
    freq[s]++;                        // O(1) per iteration
  }                                   // Total: O(N)

  // Find the maximum frequency
  int max_matches = 0;
  for (int count : freq)
  {
    if (count > max_matches)
    {
      max_matches = count; // O(N) - Iterating through freq
    }
  }

  cout << max_matches; // O(1) - Output

  return 0;
}