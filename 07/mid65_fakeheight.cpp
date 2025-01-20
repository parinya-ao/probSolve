#include <bits/stdc++.h>
using namespace std;

typedef long long ll;

/// @brief Finds the minimum absolute difference between the target and any element in the sorted heights.
/// @param sorted_heights A sorted vector of heights.
/// @param target The target height to find the closest to.
/// @return The minimum absolute difference.
ll find_closest(const vector<ll> &sorted_heights, ll target)
{
  // Binary search to find the first element not less than target
  int pos = lower_bound(sorted_heights.begin(), sorted_heights.end(), target) - sorted_heights.begin();
  ll best = LLONG_MAX;

  // Check the element at pos, if it exists
  if (pos < sorted_heights.size())
  {
    best = min(best, abs(sorted_heights[pos] - target));
  }

  // Check the element before pos, if pos is not the first element
  if (pos > 0)
  {
    best = min(best, abs(sorted_heights[pos - 1] - target));
  }

  return best;
}

int main()
{
  ios::sync_with_stdio(false);
  cin.tie(0);

  int N;
  cin >> N;

  vector<ll> heights(N);
  for (auto &h : heights)
    cin >> h;

  // Step 1: Calculate the initial sum of absolute differences
  ll initial_sum = 0;
  for (int i = 0; i < N - 1; i++)
  {
    initial_sum += abs(heights[i] - heights[i + 1]);
  }

  // Step 2: Create a sorted list of heights for easy access
  vector<ll> sorted_heights = heights;
  sort(sorted_heights.begin(), sorted_heights.end());

  ll max_gain = 0;

  // Step 3: Iterate through each student to find the best modification
  for (int i = 0; i < N; i++)
  {
    // Calculate the original differences involving student i
    ll original_diff = 0;
    if (i > 0)
    {
      original_diff += abs(heights[i] - heights[i - 1]);
    }
    if (i < N - 1)
    {
      original_diff += abs(heights[i] - heights[i + 1]);
    }

    // Determine the best possible new height to minimize differences
    ll new_diff = 0;
    if (i > 0 && i < N - 1)
    {
      // If the student is in the middle, target the median of adjacent heights
      ll target = (heights[i - 1] + heights[i + 1]) / 2;
      // Use the separate find_closest function
      ll closest = find_closest(sorted_heights, target);
      new_diff = abs(closest - heights[i - 1]) + abs(closest - heights[i + 1]);
    }
    else if (i > 0)
    {
      // If the student is at the end, match the previous student
      new_diff = 0; // Changing height to match previous student eliminates the difference
    }
    else if (i < N - 1)
    {
      // If the student is at the start, match the next student
      new_diff = 0; // Changing height to match next student eliminates the difference
    }

    // Calculate the gain achieved by this modification
    ll gain = original_diff - new_diff;
    max_gain = max(max_gain, gain);
  }

  // Step 4: Calculate the minimal possible sum after the best modification
  ll minimal_sum = initial_sum - max_gain;
  cout << minimal_sum;
}