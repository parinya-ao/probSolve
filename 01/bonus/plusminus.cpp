#include <iostream>
#include <string>
#include <sstream>

using namespace std;

int main()
{
  int n;
  cin >> n;
  cin.ignore();
  string str;
  getline(cin, str);

  stringstream ss(str);
  int num, result = 0;
  char operatorkub = '+';

  while (ss >> num)
  {
    if (operatorkub == '+')
    {
      result += num;
    }
    else if (operatorkub == '-')
    {
      result -= num;
    }
    ss >> operatorkub;
  }

  cout << result << endl;

  return 0;
}
