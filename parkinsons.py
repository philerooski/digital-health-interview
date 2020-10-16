"""
This script is a template for candidates to download the
Parkinson's data set from the UCI Machine Learning Repository.
More information on this dataset can be found here:
https://archive.ics.uci.edu/ml/datasets/parkinsons
"""

import wget
import pandas as pd

PARKINSONS_DATA_URL = "https://archive.ics.uci.edu/ml/machine-learning-databases/parkinsons/parkinsons.data"


def get_parkinsons_data():
    """ Download the Parkinson's dataset from UCI Machine Learning Repository """
    parkinsons_path = wget.download(PARKINSONS_DATA_URL)
    parkinsons = pd.read_csv(parkinsons_path)
    return parkinsons


def main():
    parkinsons = get_parkinsons_data()


if __name__ == "__main__":
    main()
