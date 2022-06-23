cat /etc/systemd/system/tiwariji.service
[Unit]
Description=Airtel tiwariji as a service
After=syslog.target network.target

[Service]
User=tomcat
ExecStart=/bin/java -javaagent:/data/jolokia-jvm-1.5.0-agent.jar=port=7778 -Dlog4j2.formatMsgNoLookups=true -jar -Xms2048m -Xmx4096m -Dcom.sun.management.jmxremote.port=9080 -Dcom.sun.management.jmxremote.rmi.port=6080 -Dcom.sun.management.jmxremote.authenticate=true -Dcom.sun.management.jmxremote.ssl=false  -XX:ErrorFile=/data/logs/java_error_%p.log -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=/data/logs/ -XX:+UnlockExperimentalVMOptions -XX:+UseG1GC -XX:+PrintGCTimeStamps -XX:+PrintAdaptiveSizePolicy -Xloggc:/data/logs/gclog.log -XX:MaxGCPauseMillis=200 -XX:G1NewSizePercent=10 -Dserver.port=8080 -Dlog_path=/data/logs/ -Djava.net.useSystemProxies=true /data/deployments/tiwariji.jar
ExecStop=/bin/kill -TERM $MAINPID
Group=tomcat
LimitNOFILE=65535

[Install]
WantedBy=multi-user.target

awk -F  ":" '/1/ {print $1}'

#!/bin/bash
echo "Program to interchangethe file.txt "
result=awk '/Dlog_path {print}' file.txt
$sed 's/app/data/' $result