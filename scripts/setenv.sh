#!/bin/bash
cat <<EOF > /usr/share/tomcat8/bin/setenv.sh
export url=database-1.cuiedb1khzug.us-east-1.rds.amazonaws.com
export usuario=admin
export senha=12345678
EOF