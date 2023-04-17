#!/bin/bash

#this is a script for consuming events from kafka

#set below given parameters according to your needs

#bin/kafka-console-consumer.sh --topic quickstart-events --from-beginning --bootstrap-server localhost:9092

KAFKA_PATH='/opt/kafka_2.13-3.4.0'
KAFKA_CONSUMER='/bin/kafka-console-consumer.sh '
TOPIC='campaing_topic'
FROM_BEGINNING='--from-beginning'
KAFKA_PRODUCER_TAIL='--bootstrap-server localhost:9092'

echo "\n\n"
echo 'kafka consumer started for topic '$TOPIC

SCRIPT=$KAFKA_PATH$KAFKA_CONSUMER' --topic '$TOPIC' '$FROM_BEGINNING' '$KAFKA_PRODUCER_TAIL

#echo "$KAFKA_PATH"
#echo "$SCRIPT"
#KAFKA_PRODUCER=$KAFKA_PATH

$SCRIPT | while read my_event; do
                                echo "$my_event"
                                my_key=$(echo "$my_event" | jq -r .customerNo)
                                echo "$my_key"
                                redis-cli incr "$my_key"
                               done





