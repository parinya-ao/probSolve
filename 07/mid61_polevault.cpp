#include <bits/stdc++.h>
using namespace std;

int main()
{
  ios::sync_with_stdio(false);
  cin.tie(NULL);

  int N, Q;
  cin >> N >> Q; // Read number of sticks and number of queries

  vector<long long> L(N); // Using long long to handle large sums
  for (auto &x : L)
  {
    cin >> x; // Read lengths of each stick
  }

  // Read all queries
  vector<long long> queries(Q);
  for (auto &x : queries)
  {
    cin >> x;
  }

  // To store all possible contiguous sums
  // For smaller N (<=1000), we can compute all possible sums
  // For larger N, we need a more efficient approach
  // Given the constraints, we'll implement two solutions:
  // 1. For N <= 1000, compute all possible sums and answer queries directly
  // 2. For larger N, use a sliding window to check each query individually

  // Precompute prefix sums
  vector<long long> prefix_sum(N + 1, 0);
  for (int i = 0; i < N; ++i)
  {
    prefix_sum[i + 1] = prefix_sum[i] + L[i];
  }

  // Determine strategy based on N
  // If N is small (<=1000), precompute all possible sums
  // Else, process each query using two pointers

  bool precompute = (N <= 1000);

  unordered_set<long long> possible_sums;
  if (precompute)
  {
    // Precompute all possible contiguous sums
    for (int i = 0; i < N; ++i)
    {
      for (int j = i + 1; j <= N; ++j)
      {
        possible_sums.insert(prefix_sum[j] - prefix_sum[i]);
      }
    }
  }

  // Prepare answers
  string answer = "";
  if (precompute)
  {
    // Answer queries using precomputed sums
    for (auto q : queries)
    {
      if (possible_sums.find(q) != possible_sums.end())
      {
        answer += 'Y';
      }
      else
      {
        answer += 'N';
      }
    }
  }
  else
  {
    // For larger N, use two pointers to find if sum exists
    // Since stick lengths are positive, we can use sliding window
    // However, because Q can be up to 100,000, we need to optimize
    // We'll iterate through all possible sums and mark which sums exist
    // But with large N and large Q, this is not feasible
    // Therefore, we'll process each query independently using two pointers

    // To optimize, sort the queries and answer them in a sorted order
    // However, since answering independently might lead to O(NQ) time,
    // which is too much. Hence, it's better to use hashing with prefix sums.

    // Create a map of prefix sums
    unordered_set<long long> prefixSet;
    for (auto ps : prefix_sum)
    {
      prefixSet.insert(ps);
    }

    // For each query, iterate through prefix sums and check if (prefix_sum + q) exists
    // This approach also may not be efficient enough for large Q

    // Alternative approach: Iterate once and for each possible subarray sum,
    // mark it as existing. But storage is an issue.

    // Given the constraints, it's challenging to handle all cases efficiently.
    // Thus, we'll implement the sliding window approach for each query.

    // Preprocess: Since stick lengths are positive, we can use sliding window per query
    // To handle multiple queries efficiently, we'll group queries by their Qi

    // However, this still leads to high complexity. Therefore, we may need to restrict
    // to implementing precompute for smaller N.

    // Since it's complex to handle all cases within time constraints, we'll notify the user.

    // For demonstration, here's how you can implement sliding window for each query
    // Note: This may not pass all test cases due to time constraints

    // Precompute all possible sums (may not be feasible for large N)
    // Here, we'll limit this approach to N <= 1000
    // Else, it's impractical

    // Therefore, we suggest optimizing the approach based on specific constraints
    // or leveraging additional insights about the problem.

    // Since implementing an efficient solution for large N and Q is non-trivial
    // and may exceed time limits, it's recommended to focus on optimized
    // algorithms or problem-specific optimizations.

    // For the sake of completeness, here's a sliding window implementation for each query

    for (auto q : queries)
    {
      bool found = false;
      long long current_sum = 0;
      int left = 0;
      for (int right = 0; right < N; ++right)
      {
        current_sum += L[right];
        while (current_sum > q && left <= right)
        {
          current_sum -= L[left];
          left++;
        }
        if (current_sum == q)
        {
          found = true;
          break;
        }
      }
      answer += (found ? 'Y' : 'N');
    }
  }

  cout << answer;

  return 0;
}