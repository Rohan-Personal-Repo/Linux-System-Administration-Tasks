# 1 - Replace Content
# Original File 
$ cat Data/Cities.txt
# New York, Toronto, Boston, Montreal, NYC
# NYC, Boston, Rochester
# Vancouver, Seattle
# Ottawa, NYC, Sault St. Marie

# We want to remove inconsistency and change NYC to New York
$ sed 's/NYC/New York/' Data/Cities.txt
# New York, Toronto, Boston, Montreal, New York
# New York, Boston, Rochester
# Vancouver, Seattle
# Ottawa, New York, Sault St. Marie

# But if we view the file again it was unchanged because we did not tell sed to update the file
$ cat Data/Cities.txt
# New York, Toronto, Boston, Montreal, NYC
# NYC, Boston, Rochester

# We need to specify the -i (inPlace) flag
# $sed -i 's/strToFind/strToReplace/' filePath

$ sed -i 's/NYC/New York/' Data/Cities.txt
# No O/P

$ cat Data/Cities.txt
# New York, Toronto, Boston, Montreal, New York
# New York, Boston, Rochester
# Vancouver, Seattle
# Ottawa, New York, Sault St. Marie

# 2 - Remove duplicated New York from Line 1
# 1 - means do the change only for Line 1, , New York$ - The New York near End of line and -i to replace original file
$ sed -i '1 s/, New York$//' Data/Cities.txt

$ cat Data/Cities.txt
New York, Toronto, Boston, Montreal
New York, Boston, Rochester
Vancouver, Seattle
Ottawa, New York, Sault St. Marie

# 3 - Remove Empty Lines from the file

# Original File 
$ cat Data/Info.txt
-- Start --

Thu Dec 18 05:13:10 UTC 2025

New York, Toronto, Boston, Montreal, New York

New York, Boston, Rochester

Vancouver, Seattle

Ottawa, New York, Sault St. Marie

Thu Dec 18 00:12:15 EST 2025

MINGW64_NT-10.0-19045 WindowsPC 3.3.6-341.x86_64 2022-09-05 20:28 UTC x86_64 Msys

-- END --

# -- Find the empty lines (^(Start)$(End)) - If there's nothing between means it's an empty line
$ sed -i '/^$/d' Data/Info.txt

# Remove the Empty lines
$ cat Data/Info.txt
-- Start --
Thu Dec 18 05:13:10 UTC 2025
New York, Toronto, Boston, Montreal, New York
New York, Boston, Rochester
Vancouver, Seattle
Ottawa, New York, Sault St. Marie
Thu Dec 18 00:12:15 EST 2025
MINGW64_NT-10.0-19045 WindowsPC 3.3.6-341.x86_64 2022-09-05 20:28 UTC x86_64 Msys
-- END --
