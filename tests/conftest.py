import os
import sys


def pytest_configure(config):
    # Get the path of the current file
    current_dir = os.path.dirname(os.path.abspath(__file__))
    # Get the parent directory of the current file
    parent_dir = os.path.abspath(os.path.join(current_dir, os.pardir))
    # Add the parent directory to the sys.path
    sys.path.append(parent_dir)
