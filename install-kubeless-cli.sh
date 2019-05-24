export OS=$(uname -s| tr '[:upper:]' '[:lower:]')
curl -OL https://github.com/kubeless/kubeless/releases/download/v1.0.3/kubeless_$OS-amd64.zip && unzip kubeless_$OS-amd64.zip && sudo mv bundles/kubeless_$OS-amd64/kubeless /usr/local/bin/
