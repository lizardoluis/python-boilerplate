# Variables
BLACK_VERSION := 23.3.0

TESTS_DIR := tests
PYTHON_FILES := sources utilities $(TESTS_DIR)

# Targets
.PHONY: help format install pyflakes test tests

help:
	@echo " "
	@echo "Targets:"
	@echo " "
	@echo "- make help                                             - Show this help"
	@echo "- make format                                           - Format all Python files"
	@echo "- make install                                          - Install all dependencies"
	@echo "- make pyflakes                                         - Run PyFlakes on all Python files"
	@echo "- make test FILE=<test-file>                            - Run the unit-test file inside tests directory"
	@echo "- make tests                                            - Run all unit-tests"
	@echo " "

install:
	pip install -r requirements.txt

format:
	black --required-version $(BLACK_VERSION) $(PYTHON_FILES)

pyflakes:
	pyflakes $(PYTHON_FILES)

test:
	if [ -z ${FILE} ]; then pytest $(TESTS_DIR); else pytest $(TESTS_DIR)/$(FILE); fi

tests:
	pytest $(TESTS_DIR)