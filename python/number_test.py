import unittest
import tales

class test(unittest.TestCase):

  def setUp(self):
    self.inst = tales.random_number()  

  def test_equal(self):
    self.assertEqual(self.inst.guess(10), 0)
  
  def test_greater(self):
    self.assertEqual(self.inst.guess(20), 1)

  def test_less(self):
    self.assertEqual(self.inst.guess(5), -1)
    
unittest.main()