#!/bin/bash

echo "Compiling and assembling application..."
sbt assembly

# Directory where spark-submit is defined
# Install spark from https://spark.apache.org/downloads.html
SPARK_HOME=/Users/${USER}/spark-2.4.0-bin-hadoop2.7

# JAR containing a simple hello world
JARFILE=`pwd`/target/scala-2.11/HelloWorld-assembly-1.0.jar

# Run it locally
${SPARK_HOME}/bin/spark-submit --class HelloWorld --master local $JARFILE
