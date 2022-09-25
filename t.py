"""
    Python code sample
"""

import random
import asyncio
class RandomIntegerGenerator:
    """
        Sample class
    """
    num: int
    random_integer: int | None

    def __init__(self, num):
        self.num = num
        self.random_integer = None

    def create_randint(self):
        pass

    def get_randint(self):
        return random.randint(1, 2)
