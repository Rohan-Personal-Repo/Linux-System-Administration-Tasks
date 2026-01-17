# 0 : Original Data 
$ cat Data/TVShowActors.csv
# actorShowName,actorRealName,showName
# "Oliver Queen","Stephen Amell",Arrow
# "Dr. Henry Morgan","Ioan Gruffudd",Forever
# "Chandler Bing","Matthew Perry",Friends
# "Joey Tribbiani","Matt Leblanc",Friends
# "Cal Lightman","Tim Roth","Lie to me"
# "Gillian Foster","Kelli Williams","Lie to me"
# "Emily Thorne","Emily Vancamp",Revenge
# "Olivia Pope","Kerry Washington",Scandal

# 1 : Use a Tab instead of a Comma
$ cat Data/TVShowActors.csv | tr , '\t'
# actorShowName   actorRealName   showName
# "Oliver Queen"  "Stephen Amell" Arrow
# "Dr. Henry Morgan"      "Ioan Gruffudd" Forever
# "Chandler Bing" "Matthew Perry" Friends
# "Joey Tribbiani"        "Matt Leblanc"  Friends
# "Cal Lightman"  "Tim Roth"      "Lie to me"
# "Gillian Foster"        "Kelli Williams"        "Lie to me"
# "Emily Thorne"  "Emily Vancamp" Revenge
# "Olivia Pope"   "Kerry Washington"      Scandal

# 2 : Split Data using a Delimiter - Indexed by 1 not 0
# Cut and showcase only first column - actorShowName
$ cat Data/TVShowActors.csv | cut -d , -f 1
# actorShowName
# "Oliver Queen"
# "Dr. Henry Morgan"
# "Chandler Bing"
# "Joey Tribbiani"
# "Cal Lightman"
# "Gillian Foster"
# "Emily Thorne"
# "Olivia Pope"

# Cut and showcase all the three columns - actorShowName,actorRealName,showName
$ cat Data/TVShowActors.csv | cut -d , -f 1,2,3
# OR
$ cat Data/TVShowActors.csv | cut -d , -f 1-3

# actorShowName,actorRealName,showName
# "Oliver Queen","Stephen Amell",Arrow
# "Dr. Henry Morgan","Ioan Gruffudd",Forever
# "Chandler Bing","Matthew Perry",Friends
# "Joey Tribbiani","Matt Leblanc",Friends
# "Cal Lightman","Tim Roth","Lie to me"
# "Gillian Foster","Kelli Williams","Lie to me"
# "Emily Thorne","Emily Vancamp",Revenge
# "Olivia Pope","Kerry Washington",Scandal

# Use cut to split and then tr to change comma to tabs for selected columns - actorShowName, showName
$ cat Data/TVShowActors.csv | cut -d , -f 1,3 | tr , '\t'
# actorShowName   showName
# "Oliver Queen"  Arrow
# "Dr. Henry Morgan"      Forever
# "Chandler Bing" Friends
# "Joey Tribbiani"        Friends
# "Cal Lightman"  "Lie to me"
# "Gillian Foster"        "Lie to me"
# "Emily Thorne"  Revenge
# "Olivia Pope"   Scandal

# Invert Case of Characters - Upper to Lower and Lower to Upper 
# Original File
$ cat Data/Cities.txt
# New York, Toronto, Boston, Montreal
# New York, Boston, Rochester
# Vancouver, Seattle
# Ottawa, New York, Sault St. Marie

# Check the file 
$ cat Data/Cities.txt | tr '[:upper:][:lower:]' '[:lower:][:upper:]'
nEW yORK, tORONTO, bOSTON, mONTREAL
nEW yORK, bOSTON, rOCHESTER
vANCOUVER, sEATTLE
oTTAWA, nEW yORK, sAULT sT. mARIE

# Save the file details:
$  cat Data/Cities.txt | tr '[:upper:][:lower:]' '[:lower:][:upper:]' >> Data/CityChangeCase.txt
