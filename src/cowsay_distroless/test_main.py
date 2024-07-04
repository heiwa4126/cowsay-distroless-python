import unittest
from unittest.mock import patch

from cowsay_distroless.main import main


class TestMain(unittest.TestCase):
    @patch("cowsay.cow")
    def test_main(self, mock_cow):
        main()
        mock_cow.assert_called_with("Hello World")


if __name__ == "__main__":
    unittest.main()
