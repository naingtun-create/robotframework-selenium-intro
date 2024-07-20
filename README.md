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

## Resources

- `common.robot`: Common keywords and settings
- `locators.robot`: Element locators
- `test_data.robot`: Test data variables

## Slowing Down Test Execution

Tests are configured to run with a delay of 0.5 seconds between actions. This can be adjusted in `resources/common.robot` by modifying the `Set Selenium Speed` value.
