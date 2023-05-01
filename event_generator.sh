#!/bin/bash

#this script generates a json line with N_TIMES times and writes to a file with FILE_NAME
#sample line generated:
# {"customerNo":"666", "amount":500}

#set below given parameters according to your needs


N_TIMES=1
MAX_CUSTOMER_NO=100
MAX_AMOUNT=1000
FILE_NAME='generated_event.txt'
START_DATE=$(date -d "2023-01-29" +%s)
END_DATE=$(date -d "2023-03-29" +%s)



rm -f $FILE_NAME

temp=''
randCustomerNo=''

for (( i=0; i<N_TIMES; i=i+1 )); do
    randCustomerNo=$(( RANDOM % MAX_CUSTOMER_NO + 1 ))
    randAmount=$(( RANDOM % MAX_AMOUNT + 1 ))
    echo '{"customerNo":"'$randCustomerNo'", "amount":'$randAmount'}' >> $FILE_NAME
done
