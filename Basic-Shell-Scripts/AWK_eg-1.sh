#0 :
# Calculate the Square of Numbers
$ awk 'BEGIN { for (i=2; i<10; i++) print "The Square of ", i, " = ", i*i; }'
# The Square of  2  =  4
# The Square of  3  =  9
# The Square of  4  =  16
# The Square of  5  =  25
# The Square of  6  =  36
# The Square of  7  =  49
# The Square of  8  =  64
# The Square of  9  =  81

# print $0 prints everything line by line 
$ cat Data/TVShowActors.csv | awk '{print $0 }'
# actorShowName,actorRealName,showName
# "Oliver Queen","Stephen Amell",Arrow
# "Dr. Henry Morgan","Ioan Gruffudd",Forever
# "Chandler Bing","Matthew Perry",Friends
# "Joey Tribbiani","Matt Leblanc",Friends
# "Cal Lightman","Tim Roth","Lie to me"
# "Gillian Foster","Kelli Williams","Lie to me"
# "Emily Thorne","Emily Vancamp",Revenge
# "Olivia Pope","Kerry Washington",Scandal

#1 :
# print $1 prints the first column, notice it stopped because by default the delimiter it uses is whitespace 
$ cat Data/TVShowActors.csv | awk '{print $1 }'
# actorShowName,actorRealName,showName
# "Oliver
# "Dr.
# "Chandler
# "Joey
# "Cal
# "Gillian
# "Emily
# "Olivia

#2 :
# -F, to specify that the delimiter we want it to split on is ,
$ cat Data/TVShowActors.csv | awk -F, '{print $1 }'
# actorShowName
# "Oliver Queen"
# "Dr. Henry Morgan"
# "Chandler Bing"
# "Joey Tribbiani"
# "Cal Lightman"
# "Gillian Foster"
# "Emily Thorne"
# "Olivia Pope"

$ cat Data/TVShowActors.csv | awk -F, '{print $3 }'
# showName
# Arrow
# Forever
# Friends
# Friends
# "Lie to me"
# "Lie to me"
# Revenge
# Scandal

# Let's Get only the unique values = Eliminate Duplicates
$ cat Data/TVShowActors.csv | awk -F, '{print $3 }' | uniq
# showName
# Arrow
# Forever
# Friends
# "Lie to me"
# Revenge
# Scandal

# Print the String Length using length function
$ awk -F, '{ printf( "%s has a String Length of %d\n", $1, length($1) ); }' Data/TVShowActors.csv
# actorShowName has a String Length of 13
# "Oliver Queen" has a String Length of 14
# "Dr. Henry Morgan" has a String Length of 18
# "Chandler Bing" has a String Length of 15
# "Joey Tribbiani" has a String Length of 16
# "Cal Lightman" has a String Length of 14
# "Gillian Foster" has a String Length of 16
# "Emily Thorne" has a String Length of 14
# "Olivia Pope" has a String Length of 13

#3 :
# Showcase the first and third column
$ cat Data/TVShowActors.csv | awk -F, '{print $1,$3 }'
# actorShowName showName
# "Oliver Queen" Arrow
# "Dr. Henry Morgan" Forever
# "Chandler Bing" Friends
# "Joey Tribbiani" Friends
# "Cal Lightman" "Lie to me"
# "Gillian Foster" "Lie to me"
# "Emily Thorne" Revenge
# "Olivia Pope" Scandal

$ cat Data/TVShowActors.csv | awk -F, '{print $1 "\t\t" $3 }'
# actorShowName           showName
# "Oliver Queen"          Arrow
# "Dr. Henry Morgan"              Forever
# "Chandler Bing"         Friends
# "Joey Tribbiani"                Friends
# "Cal Lightman"          "Lie to me"
# "Gillian Foster"                "Lie to me"
# "Emily Thorne"          Revenge
# "Olivia Pope"           Scandal