#include <iostream>
int main() {
  int sum = 0;
  // Sum values from 1 through 10 inclusive using for loop
  for (int val = 1; val <= 10; ++val) {
    sum += val;   // Equivalent to sum = sum + val
  }
  std::cout << "Sum of 1 to 10 inclusive is "
            << sum << std::endl;
}
