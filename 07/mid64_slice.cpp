#include <bits/stdc++.h>
using namespace std;

// Type definitions for clarity
typedef long long ll;
typedef pair<int, int> pii;

/**
 * @brief Reads the input data: base length and heights of each segment.
 *
 * @param M Reference to store the base length.
 * @param heights Reference to store the list of heights.
 */
void readInput(int &M, vector<int> &heights)
{
  cin >> M;
  heights.resize(M);
  for (auto &h : heights)
  {
    cin >> h;
  }
}

/**
 * @brief Finds the maximum height in the sculpture.
 *
 * @param heights The list of heights per segment.
 * @return int The maximum height found.
 */
int findMaxHeight(const vector<int> &heights)
{
  return *max_element(heights.begin(), heights.end());
}

/**
 * @brief Calculates the number of planks needed for each height level.
 *
 * This function iterates through each height level from 1 to maxHeight.
 * For each level, it identifies contiguous segments that require planks and
 * updates the plank counts based on the lengths of these segments.
 *
 * @param M The length of the base.
 * @param heights The list of heights per segment.
 * @param plankCounts Reference to a map storing plank lengths and their counts.
 */
void calculatePlanks(int M, const vector<int> &heights, map<int, int> &plankCounts)
{
  int maxHeight = findMaxHeight(heights);

  // Iterate through each height level
  for (int h = 1; h <= maxHeight; ++h)
  {
    int currentPlankLength = 0;
    for (int i = 0; i < M; ++i)
    {
      if (heights[i] >= h)
      {
        // Current segment requires this height
        currentPlankLength++;
      }
      else
      {
        // Current segment does not require this height
        if (currentPlankLength > 0)
        {
          // Update plank count
          plankCounts[currentPlankLength]++;
          currentPlankLength = 0;
        }
      }
    }
    // Check if there's an ongoing plank at the end
    if (currentPlankLength > 0)
    {
      plankCounts[currentPlankLength]++;
    }
  }
}

/**
 * @brief Filters plank counts to exclude planks longer than the base.
 *
 * @param M The length of the base.
 * @param plankCounts Reference to a map storing plank lengths and their counts.
 *                    This map will be updated to exclude longer planks.
 */
void filterPlanks(int M, map<int, int> &plankCounts)
{
  // Iterate through the map and remove planks longer than M
  for (auto it = plankCounts.begin(); it != plankCounts.end();)
  {
    if (it->first > M)
    {
      it = plankCounts.erase(it);
    }
    else
    {
      ++it;
    }
  }
}

/**
 * @brief Outputs the plank counts in the required format.
 *
 * @param plankCounts The map containing plank lengths and their counts.
 */
void outputPlanks(const map<int, int> &plankCounts)
{
  // Number of distinct planks used
  int K = plankCounts.size();
  cout << K << "\n";

  // Iterate through the map in ascending order of plank lengths
  for (const auto &entry : plankCounts)
  {
    cout << entry.first << " " << entry.second << "\n";
  }
}

int main()
{
  ios::sync_with_stdio(false);
  cin.tie(0);

  int M;
  vector<int> heights;

  // Step 1: Read input
  readInput(M, heights);

  // Step 2: Calculate planks needed
  map<int, int> plankCounts;
  calculatePlanks(M, heights, plankCounts);

  // Step 3: Filter out planks longer than M
  filterPlanks(M, plankCounts);

  // Step 4: Output the results
  outputPlanks(plankCounts);

  return 0;
}