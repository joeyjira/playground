#include <iostream>

int main() {
  int result = 1, x = 0;
  std::cout << "Please Enter a Number:" << std::endl;
  std::cin >> x;
  int temp = x;
  while (x > 1) {
    result *= x;
    --x;
  }
  std::cout << "The factorial of " << temp << " is " << result << std::endl;
  return 0;
}
