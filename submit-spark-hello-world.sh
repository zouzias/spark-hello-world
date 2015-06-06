#!/bin/bash

echo "Compiling application..."
sbt package

# Directory where spark-submit is defined
# Install spark from https://spark.apache.org/downloads.html
SPARK_HOME=/Users/zouzias/spark-1.3.1-bin-hadoop2.6

# JAR containing a simple hello world
JARFILE=`pwd`/target/scala-2.10/helloworld_2.10-1.0.jar

# Run it locally
${SPARK_HOME}/bin/spark-submit --class HelloWorld --master local $JARFILE
