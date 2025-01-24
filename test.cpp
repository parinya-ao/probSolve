// C++ program to find the prime numbers
// between a given interval
#include <bits/stdc++.h>
using namespace std;

// Function to implement the
// Sieve of Eratosthenes to find primes up to 'n'
vector<bool> sieveOfEratosthenes(int n)
{

  // Create a boolean array "prime[0..n]"
  // and initialize all entries as true.
  // A value in prime[i] will be false
  // if 'i' is not prime, otherwise true.
  vector<bool> prime(n + 1, true);

  // Mark 0 and 1 as non-prime
  prime[0] = false;
  prime[1] = false;

  // Loop through numbers from 2 to sqrt(n)
  // to mark their multiples as non-prime
  for (int p = 2; p * p <= n; p++)
  {

    // If prime[p] is still true, it means 'p' is prime
    if (prime[p] == true)
    {

      // Mark all multiples of p greater
      // than or equal to p^2 as non-prime
      // Numbers less than p^2 would
      // have already been marked as non-prime
      for (int i = p * p; i <= n; i += p)
        prime[i] = false;
    }
  }

  return prime;
}

// Function to find all prime numbers in the range [m, n]
vector<int> primeRange(int m, int n)
{

  // Get the boolean array representing prime
  // numbers up to n
  vector<bool> isPrime = sieveOfEratosthenes(n);
  vector<int> ans;

  for (int i = m; i <= n; i++)
  {

    // If 'i' is prime, add it to the result list
    if (isPrime[i])
      ans.push_back(i);
  }

  return ans;
}

int main()
{

  int m = 1, n = 10;

  vector<int> ans = primeRange(m, n);

  for (auto &i : ans)
    cout << i << " ";

  return 0;
}