#!/bin/bash

#this is a script for producing events to kafka
#type the event and press enter to send to kafka

#set below given parameters according to your needs

KAFKA_PATH='/opt/kafka_2.13-3.4.0'
KAFKA_PRODUCER='/bin/kafka-console-producer.sh '
TOPIC='campaing_topic'
KAFKA_PRODUCER_TAIL='--bootstrap-server localhost:9092'

echo 'kafka producer started for topic '$TOPIC

SCRIPT=$KAFKA_PATH$KAFKA_PRODUCER' --topic '$TOPIC' '$KAFKA_PRODUCER_TAIL

#echo "$KAFKA_PATH"
#echo "$SCRIPT"
#KAFKA_PRODUCER=$KAFKA_PATH

($SCRIPT)
