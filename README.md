# Sauce Demo Robot Framework Test Suite

This project contains automated tests for the Sauce Demo website (https://www.saucedemo.com/) using Robot Framework.

## Project Structure

- `tests/`: Contains test case files
- `resources/`: Contains reusable keywords, variables, and test data
- `results/`: Where test execution results are saved

## Setup

1. Install Python 3.x
2. Install Robot Framework and SeleniumLibrary: pip install robotframework robotframework-seleniumlibrary
3. Download ChromeDriver and add it to your PATH

## Running Tests

To run all tests: robot -d results tests
To run a specific test file: robot -d results tests/login_test.robot

## Test Cases

- `login_test.robot`: Tests various login scenarios
- `inventory_test.robot`: Tests inventory page functionality
- `checkout_test.robot`: Tests the checkout process
  
## Results

- Chromium Driver should pop up where fields are automatically filled in using Selenium before being checked for test cases with Robot Framework
![image](https://github.com/user-attachments/assets/bf468aa9-fc48-4584-9cf3-5dc2e322fd65)
![image](https://github.com/user-attachments/assets/4f89eb79-9b0a-4295-a362-7e737efcbaa7)

## Resources

- `common.robot`: Common keywords and settings
- `locators.robot`: Element locators
- `test_data.robot`: Test data variables

## Slowing Down Test Execution

Tests are configured to run with a delay of 0.5 seconds between actions. This can be adjusted in `resources/common.robot` by modifying the `Set Selenium Speed` value.
