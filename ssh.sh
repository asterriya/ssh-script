# Disable IPv6
sysctl -w net.ipv6.conf.all.disable_ipv6=1
sysctl -w net.ipv6.conf.default.disable_ipv6=1

# Update apt
apt update

# Install required packages
apt install -y bzip2 gzip coreutils screen curl unzip

# Download setup script
wget https://raw.githubusercontent.com/givpn/AutoScriptXray/master/setup.sh

# Make setup script executable
chmod +x setup.sh

# Remove trailing newline characters from setup script
sed -i -e 's/\r$//' setup.sh

# Start a screen session to run setup script
screen -S setup ./setup.sh
