// import required spark classes
import org.apache.spark.SparkConf
import org.apache.spark.sql.SparkSession
 
// define main method (Spark entry point)
object HelloWorld {
  def main(args: Array[String]) {
 
    // initialise spark context
    val conf = new SparkConf().setAppName(HelloWorld.getClass.getName)
    val spark: SparkSession = SparkSession.builder.config(conf).getOrCreate()

    // do stuff
    println("************")
    println("************")
    println("Hello, world!")
    val rdd = spark.sparkContext.parallelize((1 to 10).toList)
    rdd.count()
    println("************")
    println("************")
    
    // terminate spark context
    spark.stop()
    
  }
}

