userNames=("Chandler" "Monica" "Ross" "Joey" "Phoebe" "Rachel" "Gunther")

# IFS is what BASH uses as a Delimiter to break up statements, arguments etc.
# We don't want to change IFS values globally so we create BASH Sub-shells and set IFS inside it 
# So their Scope will remain only for this Code and once it's done it won't affect the original IFS Values
(
    IFS=,
    echo "Comma Separated Array : ${userNames[*]}"
)

(
    IFS='|'
    echo "Bar Separated Array : ${userNames[*]}"
)

(
    IFS=';'
    echo "Semi-Colon Separated Array : ${userNames[*]}"
)

(
    IFS='!'
    echo "Exclamation Separated Array : ${userNames[*]}"
)

# $ ./IFSEg.sh
# Comma Separated Array : Chandler,Monica,Ross,Joey,Phoebe,Rachel,Gunther
# Bar Separated Array : Chandler|Monica|Ross|Joey|Phoebe|Rachel|Gunther
# Semi-Colon Separated Array : Chandler;Monica;Ross;Joey;Phoebe;Rachel;Gunther
# Exclamation Separated Array : Chandler!Monica!Ross!Joey!Phoebe!Rachel!Gunther