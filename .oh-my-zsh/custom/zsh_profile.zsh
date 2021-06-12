# set java home
export JAVA_HOME=/usr/local/jdk1.8
export CLASSPATH=.:$JAVA_HOME/lib/tools.jar:$JAVA_HOME/lib/dt.jar:$CLASSPATH
export PATH=$JAVA_HOME/bin:$PATH

# set maven home
export M2_HOME=/usr/local/apache-maven
export MAVEN_HOME=/usr/local/apache-maven
export PATH=$MAVEN_HOME/bin:$PATH

# set scala home
export SCALA_HOME=/usr/local/scala-2.12
export PATH=$SCALA_HOME/bin:$PATH

# set sbt home
export SBT_HOME=/usr/local/sbt
export PATH=$SBT_HOME/bin:$PATH

# set ruby home
export RUBY_HOME=/usr/local/ruby
export PATH=$RUBY_HOME/bin:$PATH

# set python2 home
export PYTHON2_HOME=/usr/local/python2
export PATH=$PYTHON2_HOME/bin:$PATH

# set python3 home
export PYTHON3_HOME=/usr/local/python3
export PATH=$PYTHON3_HOME/bin:$PATH

# set node.js home
export NODE_HOME=/usr/local/node
export NODE_PATH=$NODE_HOME/lib/node_modules
export PATH=$NODE_HOME/bin:$PATH

# set mysql home.
export MYSQL_HOME=/usr/local/mysql
export PATH=$MYSQL_HOME/bin:$PATH

# set zookeeper home.
export ZOOKEEPER_HOME=/usr/local/apache-zookeeper
export PATH=$ZOOKEEPER_HOME/bin:$PATH

# set hadoop home
export HADOOP_HOME=/usr/local/hadoop
export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop
export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native
export HADOOP_OPTS="-Djava.library.path=$HADOOP_HOME/lib/native"
export PATH=$HADOOP_HOME/bin:$PATH

# set hive home
export HIVE_HOME=/usr/local/apache-hive
export CLASSPATH=.:$HIVE_HOME/bin:$CLASSPATH
export PATH=$HIVE_HOME/bin:$PATH

# set tez home
export TEZ_HOME=/usr/local/apache-tez
export PATH=$TEZ_HOME/bin:$PATH

# set sqoop home
export SQOOP_HOME=/usr/local/sqoop
export PATH=$SQOOP_HOME/bin:$PATH

# set hbase home
export HBASE_HOME=/usr/local/hbase
export HBASE_CLASSPATH=$HBASE_HOME/lib
export PATH=$HBASE_HOME/bin:$PATH

# set kafka home
export KAFKA_HOME=/usr/local/kafka
export PATH=$KAFKA_HOME/bin:$PATH

# set spark home.
export SPARK_HOME=/usr/local/spark
export SPARK_YARN_USER_ENV=${HADOOP_CONF_DIR}
export PATH=$SPARK_HOME/bin:$SPARK_HOME/sbin:$PATH

# set flink home.
export FLINK_HOME=/usr/local/flink
export PATH=$FLINK_HOME/bin:$PATH

# set kylin home.
export KYLIN_HOME=/usr/local/apache-kylin
export PATH=$KYLIN_HOME/bin:$PATH

# set oozie home
export OOZIE_HOME=/usr/local/oozie
export OOZIE_CONFIG=$OOZIE_HOME/conf
export OOZIE_URL=http://localhost:11000/oozie
export PATH=$OOZIE_HOME/bin:$PATH
