#!/usr/bin/expect -f

# set output [exec ./bashfile.sh]

spawn /tmp/Nilesh/truesight-sm/bashfile.sh

#python /tmp/Nilesh/truesight-sm/install.py

expect "Select installation mode:"
send "1\n"
expect "Deployment type :"
send "3\n"
expect "Enter the output directory path to generate inputs file (default: /opt/bmc/truesight):"
send "/tmp/Nilesh/Elasticsearch/truesight\n"
expect "Enter a value for the HTTP port (default: 9200):"
send "9200\n"
expect "Enter a value for the TCP port (default: 9300):"
send "9300\n"
expect "Enter the heap size for the ElasticSearch installation in MB (default: 8192):"
send "4046\n"
expect {Do you want to proceed with the entered information? ([y]es/[n]o)}
send "yes\n"



expect eof
