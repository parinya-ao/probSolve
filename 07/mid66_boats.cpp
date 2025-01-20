#include <bits/stdc++.h>
using namespace std;

// Function to check if it's possible to assign boats for the first 'mid' weeks
bool isPossible(int mid, const vector<long long> &boats, const vector<long long> &requests)
{
  // Create a multiset of boat capacities
  multiset<long long> boatSet(boats.begin(), boats.end());

  // Extract the first 'mid' requests and sort them in ascending order
  vector<long long> currentRequests(requests.begin(), requests.begin() + mid);
  sort(currentRequests.begin(), currentRequests.end());

  // Try to assign the smallest possible boat to each request
  for (auto &req : currentRequests)
  {
    // Find the first boat with capacity >= req
    auto it = boatSet.lower_bound(req);
    if (it == boatSet.end())
    {
      // No suitable boat found
      return false;
    }
    // Assign the boat and remove it from the set
    boatSet.erase(it);
  }
  return true;
}

int main()
{
  ios::sync_with_stdio(false);
  cin.tie(0);

  int N, M;
  cin >> N >> M;

  vector<long long> boats(N);
  for (int i = 0; i < N; ++i)
  {
    cin >> boats[i];
  }

  vector<long long> requests(M);
  for (int i = 0; i < M; ++i)
  {
    cin >> requests[i];
  }

  // Sort the boats in ascending order
  sort(boats.begin(), boats.end());

  int left = 0, right = min(N, M), result = 0;

  // Binary search to find the maximum L
  while (left <= right)
  {
    int mid = left + (right - left) / 2;
    if (isPossible(mid, boats, requests))
    {
      result = mid;
      left = mid + 1;
    }
    else
    {
      right = mid - 1;
    }
  }

  cout << result;
}