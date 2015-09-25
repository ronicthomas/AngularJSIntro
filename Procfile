web: java $JAVA_OPTS -jar server/webapp-runner.jar $RUNNER_OPTS --enable-compression --port $PORT --bind-on-init $BIND_ON_INIT target/*.war
worker: java -DworkerProcess=true $WORKER_OPTS -jar server/webapp-runner.jar $RUNNER_OPTS --port $PORT target/*.war
