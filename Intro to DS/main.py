# Import the libraries
import numpy as np                  # Numerical Python
import pandas as pd                 # Data Analysis
import matplotlib.pyplot as plt     # Plotting
import seaborn as sns               # Statistical Data Visualization

# Let's make sure pandas returns all the rows and columns for the dataframe
pd.set_option('display.max_rows', None)
pd.set_option('display.max_columns', None)

# Force pandas to display full numbers instead of scientific notation
#pd.options.display.float_format = '{:.0f}'.format

# Library to suppress warnings
import warnings
warnings.filterwarnings('ignore')

df = pd.read_csv('U.S._Chronic_Disease_Indicators.csv')
# Checking first elements of the DataFrame with `.head( )` method
print(df.head(5))

# Checking how many columns are in the dataframe
print('There are ' + str(len(str(df.columns))) + ' columns') 

# Checking last elements of the DataFrame with `.tail( )` method
df.tail(5)





def empty_columns(DataFrame):
    print(len(DataFrame.columns))
    for column in DataFrame.columns:
        if len(DataFrame[column].dropna()) == 0:
            #column has only empty rows, so we don't need this column
            DataFrame.drop(columns=[column], inplace=True)
            print(str(column)+ ' was dropped from dataframe because column has only empty rows')
    print(len(DataFrame.columns))
    return

empty_columns(df)