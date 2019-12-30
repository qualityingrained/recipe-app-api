from django.test import TestCase
from app.calc import add, subtract


class CalcTests(TestCase):
    def test_add_numbers(self):
        """test that 2 numbers are correctly added together"""
        self.assertEqual(add(3, 8), 11)

    def test_subtract_numbers(self):
        """test that verifies that 2 numbers are correctly subtracted"""
        self.assertEqual(subtract(5, 11), 6)