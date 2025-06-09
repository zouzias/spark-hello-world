#!/bin/bash

echo "Compiling and assembling application..."
sbt assembly

# Directory where spark-submit is defined
# Install spark from https://spark.apache.org/downloads.html
# NOTE: you need to change this to your spark installation

# Replace "home" with "Users" in MacOS
SPARK_HOME=/home/${USER}/spark-3.5.6-bin-hadoop3

# JAR containing a simple hello world
JARFILE=`pwd`/target/scala-2.12/HelloWorld-assembly-0.1.0.jar

# Run it locally
${SPARK_HOME}/bin/spark-submit --class HelloWorld --master local $JARFILE
