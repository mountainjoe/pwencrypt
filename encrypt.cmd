SORTEDFILE="${1}-sorted"
OUTFILE="${2}"

if [ -e "$OUTFILE" ]
then
   mv "$OUTFILE" "${OUTFILE}.bak"
fi


sort $1 > $SORTEDFILE
openssl aes-256-cbc -a -salt -in $SORTEDFILE -out $OUTFILE
rm "${SORTEDFILE}"
