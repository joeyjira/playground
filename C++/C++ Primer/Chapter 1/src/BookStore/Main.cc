#include <iostream>
#include <"Sales_item.h">
int main() {
  Sales_item total;   // Variable to hold data for the next transaction
  // Read the first transaction and ensure that there are data to process
  if (std::cin >> total) {
    Sales_item trans; // Variable to hold the running sum
    // Read and process the remaining transactions
    while (std::cin >> trans) {
      // If we're still processing the same book
      if (total.isbn() == trans.isbn())
        total += trans; // Update the running total
      else {
        // Print result for the previous book
        std::cout << total << std::endl;
        total = trans;  // Total now refers to the next book
      }
    }
    std::cout << total << std::endl;  // Print the last transaction
  } else {
    // No input! Warn the user
    std::cerr << "No data?!" << std::endl;
    return -1;  // Indicate failure
  }

  return 0;
}
