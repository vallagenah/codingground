# Read from the file file.txt and output all valid phone numbers to stdout.
check_phone()
{
    pat="^\(?\d{3}\)?[-\s]\d{3}[-]\d{4}$"
    if [[ $pat =~ $1 ]]
    then
        echo "$1"
    else
        echo "not valid number"
    fi

}

filename=file.txt
while read -r line; do
    phone=$line
    #echo "Name read from file - $name"
    check_phone "$phone"
    
done < $filename