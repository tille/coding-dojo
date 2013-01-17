import random
import unittest

class random_number(unittest.TestCase):   

    def __init__(self):
      self.number = 10
    
    def guess(self,user_num):
      if user_num == self.number:
        return 0
      elif user_num > self.number:
        return 1
      elif user_num < self.number:
        return -1