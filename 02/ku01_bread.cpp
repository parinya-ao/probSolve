#include <bits/stdc++.h>
using namespace std;

void readInput(vector<int> &vec, int index, int size)
{
  if (index == size)
    return;
  cin >> vec[index];
  readInput(vec, index + 1, size);
}

void recursiveSort(vector<int> &vec, int left, int right)
{
  if (left >= right)
    return;
  int pivot = vec[right];
  int partitionIndex = left;
  for (int i = left; i < right; ++i)
  {
    if (vec[i] < pivot)
    {
      swap(vec[i], vec[partitionIndex]);
      partitionIndex++;
    }
  }
  swap(vec[partitionIndex], vec[right]);
  recursiveSort(vec, left, partitionIndex - 1);
  recursiveSort(vec, partitionIndex + 1, right);
}

void calculateDifferences(const vector<int> &vec, vector<int> &diff, int index)
{
  if (index == vec.size() - 1)
    return;
  diff.push_back(vec[index + 1] - vec[index]);
  calculateDifferences(vec, diff, index + 1);
}

void recursiveSortDesc(vector<int> &vec, int left, int right)
{
  if (left >= right)
    return;
  int pivot = vec[right];
  int partitionIndex = left;
  for (int i = left; i < right; ++i)
  {
    if (vec[i] > pivot)
    {
      swap(vec[i], vec[partitionIndex]);
      partitionIndex++;
    }
  }
  swap(vec[partitionIndex], vec[right]);
  recursiveSortDesc(vec, left, partitionIndex - 1);
  recursiveSortDesc(vec, partitionIndex + 1, right);
}

void findLargestAreas(const vector<int> &widths, const vector<int> &heights, vector<long long> &candidates, int index)
{
  if (index >= 2)
    return;
  for (int i = 0; i < min(2, (int)heights.size()); ++i)
  {
    candidates.push_back(1LL * widths[index] * heights[i]);
  }
  findLargestAreas(widths, heights, candidates, index + 1);
}

int main()
{
  ios::sync_with_stdio(false);
  cin.tie(nullptr);

  int W, H, M, N;
  cin >> W >> H >> M >> N;

  vector<int> x(M);
  vector<int> y(N);

  readInput(x, 0, M);
  readInput(y, 0, N);

  x.push_back(0);
  x.push_back(W);
  y.push_back(0);
  y.push_back(H);

  recursiveSort(x, 0, x.size() - 1);
  recursiveSort(y, 0, y.size() - 1);

  vector<int> widths;
  vector<int> heights;

  calculateDifferences(x, widths, 0);
  calculateDifferences(y, heights, 0);

  recursiveSortDesc(widths, 0, widths.size() - 1);
  recursiveSortDesc(heights, 0, heights.size() - 1);

  vector<long long> candidates;
  findLargestAreas(widths, heights, candidates, 0);

  recursiveSortDesc(candidates, 0, candidates.size() - 1);

  if (candidates.size() == 1)
  {
    cout << candidates[0] << " " << candidates[0] << "\n";
  }
  else
  {
    cout << candidates[0] << " " << candidates[1] << "\n";
  }

  return 0;
}