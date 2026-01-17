# Get Date in Local TimeZone
$ date
Wed Dec 17 21:20:52 EST 2025

# Get Date in UTC TimeZone
$ date -u
Thu Dec 18 02:20:55 UTC 2025

# Extract just the Date 
$ date +%F
# 2025-12-17

# Internally uses strftime Formats

# Use our specific DateTime format
$ dateFormat='%Y/%m/%d %H:%M:%S'

$ echo $dateFormat
# %Y/%m/%d %H:%M:%S

$ date +"$dateFormat"
# 2025/12/17 21:24:39

# We can also make use of printf to provide a DateTime or Date Format
$ printf 'The Current DateTime is : %(%Y/%m/%d %H:%M:%S)T\n'
# The Current DateTime is : 2025/12/17 21:29:10

$ printf 'The Current Date is : %(%F)T\n'
# The Current Date is : 2025-12-17

# Check out strftime man pages