#include <iostream>
/*
 * Simple main function:
 * Read two numbers and write their sum
 */
int main() {
  // Prompt users to enter 2 numbers
  std::cout << "Enter Two Numbers:" << std::endl;
  int v1 = 0, v2 = 0;     // Variables to store input we read
  std::cin >> v1 >> v2;   // Read input
  std::cout << "The sum of " << v1 << " and " << v2
            << " is " << v1 + v2 << std::endl;

  return 0;
}
