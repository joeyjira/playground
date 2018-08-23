#include <iostream>
int main() {
  int sum = 0, val = 0;
  // Read until end-of-file, calculatinga running total of all values read
  while (std::cin >> val)
    sum += val;   // Equivalent to sum = sum + value
  std::cout << "Sum is: " << sum << std::endl;
  return 0;
}
