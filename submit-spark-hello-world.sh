#!/bin/bash

echo "Compiling application..."
sbt assembly

# Directory where spark-submit is defined
# Install spark version 2.1.1 from https://spark.apache.org/downloads.html
SPARK_HOME=/home/${USER}/spark-2.1.1-bin-hadoop2.7

# JAR containing a simple hello world
JAR=`ls target/scala-2.11/*.jar`
JARFILE=`pwd`/${JAR}

# Run it locally
${SPARK_HOME}/bin/spark-submit --class HelloWorld --master local $JARFILE
