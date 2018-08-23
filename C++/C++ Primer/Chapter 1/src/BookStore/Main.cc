#include <iostream>
#include "Sales_item.h"

int main() {
  SalesItem book;
  // Read ISBN, number of copies sold, and sales price
  std::cin >> book;
  // Write ISBN, number of copies sold, total revenue, and average price
  std::cout << book << std::endl;
  return 0;
}
