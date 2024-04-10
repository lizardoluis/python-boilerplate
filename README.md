# Python Boilerplate

## Project Structure

The project follows a structured layout to maintain organization and clarity. Below is a brief overview of each folder:

- sources
The sources directory contains the main source code of the project. This is where you'll find the Python modules, packages, or scripts that constitute the functionality of the project. It's organized hierarchically based on the project's architecture.

- tests
The tests directory houses all the test code for the project. These tests validate the functionality of the source code and ensure that changes or additions do not introduce regressions. The directory may contain unit tests, integration tests, or any other forms of automated testing.

- utilities
The utilities directory holds any auxiliary scripts, tools, or utilities that support the development process. These may include helper functions, scripts for data processing, or any other tools that aid in development but aren't part of the core project functionality.


## Code formatting

This project follows a strict code formatting style to ensure consistent and readable code. We use the [Black](https://black.readthedocs.io/en/stable/index.html) formatter, which is a popular Python code formatter that automatically formats your code to adhere to the specified style guidelines.

To maintain code consistency, it is mandatory to use the Black formatter. Failure to adhere to the formatting guidelines will result in build failures in GitHub Actions.

## Testing

To ensure the correctness of the code and verify its behavior, we use pytest for automated testing. The test cases are located in the `tests` directory.

### Prerequisites

Before running the tests, ensure that you have the following prerequisites installed:

- Python 3.x: [Installation Guide](https://www.python.org/downloads/)
- pip: Included with Python 3.x by default

### Setup

Install the project dependencies:

   ```shell
   pip install -r requirements.txt
   ```

### Running the tests

To run the tests using pytest, execute the following command in the project directory:

   ```shell
   pytest tests
   ```

This command will discover and execute all the test cases within the tests directory. The test results will be displayed in the console.

### Adding New Tests

To add new test cases, you can create additional test files or expand the existing ones within the `tests` directory. Follow the naming convention `test_*.py` for your test files so that pytest can automatically discover them.

### Test Coverage

We strive to maintain a high test coverage to ensure comprehensive testing. When making changes or adding new features, please consider adding relevant test cases to cover the changes.

## Makefile

We have provided a `Makefile` to simplify common development tasks. Here's an explanation of the available targets:

- `help` - Displays a list of available targets and their descriptions.
- `install` - Installs all project dependencies specified in requirements.txt.
- `format` - Formats all Python files using the Black formatter.
- `pyflakes` - Run PyFlakes on all Python source files to check for errors.
- `test` - Runs a specific unit test file present inside the tests directory.
- `tests` - Runs all unit tests located in the tests directory.

```shell
make help
make install
make format
make pyflakes
make test FILE=<test-file-name> 
make tests
```

**Note:** Before running the tests, make sure to install the project dependencies using the install target.

Please ensure you run the necessary targets in the Makefile to format the code, install dependencies, and run tests.
