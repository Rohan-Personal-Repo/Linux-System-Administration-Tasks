#1 :
# Showcase the data as a String with printf
$ cat Data/TVShowActors.csv | awk -F, '{ printf( "%s has worked on the show %s as %s \n", $2, $3, $1 ); }'
# actorRealName has worked on the show showName as actorShowName
# "Stephen Amell" has worked on the show Arrow as "Oliver Queen"
# "Ioan Gruffudd" has worked on the show Forever as "Dr. Henry Morgan"
# "Matthew Perry" has worked on the show Friends as "Chandler Bing"
# "Matt Leblanc" has worked on the show Friends as "Joey Tribbiani"
# "Tim Roth" has worked on the show "Lie to me" as "Cal Lightman"
# "Kelli Williams" has worked on the show "Lie to me" as "Gillian Foster"
# "Emily Vancamp" has worked on the show Revenge as "Emily Thorne"
# "Kerry Washington" has worked on the show Scandal as "Olivia Pope"

#2 :
# strip quotes with gsub and don't use CAT only use AWK
# Remove extra Double Quotes 
awk -F, '
{
    # Remove double quotes from all relevant fields
    gsub(/"/,"",$1)
    gsub(/"/,"",$2)
    gsub(/"/,"",$3)

    printf("%s has worked on the show %s as %s\n", $2, $3, $1)
}
' Data/TVShowActors.csv

# actorRealName has worked on the show showName as actorShowName
# Stephen Amell has worked on the show Arrow as Oliver Queen
# Ioan Gruffudd has worked on the show Forever as Dr. Henry Morgan
# Matthew Perry has worked on the show Friends as Chandler Bing
# Matt Leblanc has worked on the show Friends as Joey Tribbiani
# Tim Roth has worked on the show Lie to me as Cal Lightman
# Kelli Williams has worked on the show Lie to me as Gillian Foster
# Emily Vancamp has worked on the show Revenge as Emily Thorne
# Kerry Washington has worked on the show Scandal as Olivia Pope

#3 :
# Sort the above Output 
awk -F, '
{
    # Remove double quotes from all relevant fields
    gsub(/"/,"",$1)
    gsub(/"/,"",$2)
    gsub(/"/,"",$3)

    printf("%s has worked on the show %s as %s\n", $2, $3, $1)
}
' Data/TVShowActors.csv | sort

# Emily Vancamp has worked on the show Revenge as Emily Thorne
# Ioan Gruffudd has worked on the show Forever as Dr. Henry Morgan
# Kelli Williams has worked on the show Lie to me as Gillian Foster
# Kerry Washington has worked on the show Scandal as Olivia Pope
# Matt Leblanc has worked on the show Friends as Joey Tribbiani
# Matthew Perry has worked on the show Friends as Chandler Bing
# Stephen Amell has worked on the show Arrow as Oliver Queen
# Tim Roth has worked on the show Lie to me as Cal Lightman
# actorRealName has worked on the show showName as actorShowName

#4 :
# Separate only the Characters who worked on specific Shows

# awk -F, → Sets comma as the CSV separator
# gsub(/"/,"",$1/$2/$3) → Removes quotes from actorShowName, actorRealName, showName
# if ($3=="Lie to me") → Only processes lines where the show is Lie to me or Friends
# printf("%s has worked on the show %s as %s\n",$2,$3,$1) → Prints the output in the desired format

awk -F, '
{
    # Remove double quotes from all relevant fields
    gsub(/"/,"",$1)
    gsub(/"/,"",$2)
    gsub(/"/,"",$3)

    # Check if the show name matches "Lie to me"
    if ($3 == "Lie to me") {
        printf("%s has worked on the show %s as %s\n", $2, $3, $1)
    }
}
' Data/TVShowActors.csv
# Tim Roth has worked on the show Lie to me as Cal Lightman
# Kelli Williams has worked on the show Lie to me as Gillian Foster

$ awk -F, '
{
    # Remove double quotes from all relevant fields
    gsub(/"/,"",$1)
    gsub(/"/,"",$2)
    gsub(/"/,"",$3)

    # Check if the show name matches "Friends"
    if ($3 == "Friends") {
        printf("%s has worked on the show %s as %s\n", $2, $3, $1)
    }
}
' Data/TVShowActors.csv
# Matthew Perry has worked on the show Friends as Chandler Bing
# Matt Leblanc has worked on the show Friends as Joey Tribbiani