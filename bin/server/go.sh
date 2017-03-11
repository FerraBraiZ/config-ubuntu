#!/bin/bash
if [[ ! $INSTALL_SCRIPT ]]; then
    echo "(!) Error: You must use the installer script."
    exit
fi

echo "(+) Downloading Google Go lang"


curl -o tmp/golang.tar.gz https://storage.googleapis.com/golang/go1.8.linux-amd64.tar.gz
tar -C /usr/local -xzf tmp/golang.tar.gz
rm tmp/golang.tar.gz

# IMPORTANT: Do NOT have a trailing \ on the LAST item!

echo "(+) Complete! Use with $ go"
echo "(+) Located: /user/local/go/bin"
echo "(!) If you are not using the provided .profile make sure to export PATH=\$PATH:/usr/local/go/bin"

if [ $SKIP_SLEEP == false ]; then
    sleep 4
fi

