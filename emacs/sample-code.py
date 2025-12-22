#!/usr/bin/env python3
"""
Sample Python code to demonstrate syntax highlighting in Oscura themes.
This file showcases various language features and syntax elements.
"""

import os
import sys
from typing import List, Dict, Optional, Union
from dataclasses import dataclass
from datetime import datetime

# Constants
VERSION = "1.0.0"
MAX_RETRIES = 3
DEFAULT_TIMEOUT = 30

@dataclass
class User:
    """Represents a user in the system."""
    id: int
    name: str
    email: str
    created_at: datetime
    is_active: bool = True
    
    def __str__(self) -> str:
        return f"User({self.name}, {self.email})"

class DatabaseConnection:
    """Manages database connections with context manager support."""
    
    def __init__(self, host: str, port: int = 5432):
        self.host = host
        self.port = port
        self._connection = None
    
    def __enter__(self):
        self.connect()
        return self
    
    def __exit__(self, exc_type, exc_val, exc_tb):
        self.disconnect()
    
    def connect(self):
        """Establish database connection."""
        print(f"Connecting to {self.host}:{self.port}")
        self._connection = f"Connection to {self.host}"
    
    def disconnect(self):
        """Close database connection."""
        if self._connection:
            print("Disconnecting...")
            self._connection = None

def fibonacci(n: int) -> int:
    """Calculate the nth Fibonacci number recursively."""
    if n <= 1:
        return n
    return fibonacci(n - 1) + fibonacci(n - 2)

async def fetch_data(url: str) -> Dict[str, any]:
    """Asynchronously fetch data from a URL."""
    # Simulated async operation
    return {"status": "success", "data": [1, 2, 3, 4, 5]}

def process_items(items: List[Union[int, str]]) -> List[str]:
    """Process a list of mixed items."""
    processed = []
    for i, item in enumerate(items):
        if isinstance(item, int):
            processed.append(f"Number: {item * 2}")
        elif isinstance(item, str):
            processed.append(f"String: {item.upper()}")
        else:
            processed.append(f"Unknown: {item}")
    return processed

# Lambda function example
square = lambda x: x ** 2

# List comprehension
squares = [x ** 2 for x in range(10) if x % 2 == 0]

# Dictionary comprehension
word_lengths = {word: len(word) for word in ["python", "code", "theme"]}

# Generator expression
even_generator = (x for x in range(100) if x % 2 == 0)

# Decorator example
def timer(func):
    """Decorator to time function execution."""
    def wrapper(*args, **kwargs):
        start = datetime.now()
        result = func(*args, **kwargs)
        end = datetime.now()
        print(f"{func.__name__} took {end - start}")
        return result
    return wrapper

@timer
def slow_function():
    """A function that takes some time."""
    import time
    time.sleep(1)
    return "Done!"

# Exception handling
def safe_divide(a: float, b: float) -> Optional[float]:
    """Safely divide two numbers."""
    try:
        result = a / b
    except ZeroDivisionError:
        print("Error: Division by zero!")
        return None
    except TypeError as e:
        print(f"Type error: {e}")
        return None
    else:
        return result
    finally:
        print("Division operation completed")

# Main execution
if __name__ == "__main__":
    # Create some users
    users = [
        User(1, "Alice", "alice@example.com", datetime.now()),
        User(2, "Bob", "bob@example.com", datetime.now(), False),
    ]
    
    # Test database connection
    with DatabaseConnection("localhost") as db:
        print("Database operations here...")
    
    # Test functions
    print(f"Fibonacci(10) = {fibonacci(10)}")
    print(f"Squares: {squares}")
    print(f"Word lengths: {word_lengths}")
    
    # Test error handling
    result = safe_divide(10, 2)
    print(f"10 / 2 = {result}")
    
    # Multi-line string
    message = """
    This is a multi-line string
    that demonstrates how the theme
    handles string literals across
    multiple lines.
    """
    print(message)
    
    # Raw string and f-string examples
    raw_path = r"C:\Users\Documents\file.txt"
    formatted = f"Version: {VERSION}, Max retries: {MAX_RETRIES}"
    
    print("Theme demonstration complete!")
