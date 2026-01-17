# Find all the directories . (Current Directory) and /Data - Houses the CSV File
$ find . -type d
# .
# ./Data

#  Find all of the normal files inside this Directory
$ find . -type f
# ./AlphaNumericValidation.sh
# ./ArithOperatorsEg.sh
# ...
# ./Data/TVShowActors.csv
# ...
# ./whileLoopTimerEg.sh
# ./zipFiles.sh

# Find out only the CSV files from the Directory
$ find . -type f -name "*.csv"
# ./Data/TVShowActors.csv

# Find out the number of Shell Scripts in the Directory
$ find . -type f -name "*.sh" | wc -l
# 32
