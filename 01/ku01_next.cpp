#include <iostream>
#include <vector>
#include <numeric>
#include <algorithm>

using namespace std;

int main()
{
  int N;
  cin >> N;

  vector<int> sendTo(N + 1);
  vector<bool> visited(N + 1, false);

  for (int i = 1; i <= N; ++i)
  {
    cin >> sendTo[i];
  }

  int result = 1;

  for (int i = 1; i <= N; ++i)
  {
    if (!visited[i])
    {
      int current = i;
      int cycleLength = 0;

      while (!visited[current])
      {
        visited[current] = true;
        current = sendTo[current];
        ++cycleLength;
      }

      result = max(result, cycleLength);
    }
  }

  cout << result << endl;
  return 0;
}
