#!/bin/sh
pip install frida frida-tools --upgrade
pip3 install frida frida-tools --upgrade
VERSION=`pip show frida | grep 'Version: ' | awk '{print $2}'`
rm -rf frida_server
mkdir -p frida_server
wget https://github.com/frida/frida/releases/download/$VERSION/frida-server-$VERSION-windows-x86.exe.xz -P frida_server
wget https://github.com/frida/frida/releases/download/$VERSION/frida-server-$VERSION-windows-x86_64.exe.xz -P frida_server
wget https://github.com/frida/frida/releases/download/$VERSION/frida-server-$VERSION-macos-x86_64.xz -P frida_server
wget https://github.com/frida/frida/releases/download/$VERSION/frida-server-$VERSION-ios-arm.xz -P frida_server
wget https://github.com/frida/frida/releases/download/$VERSION/frida-server-$VERSION-ios-arm64.xz -P frida_server
wget https://github.com/frida/frida/releases/download/$VERSION/frida-server-$VERSION-android-x86.xz -P frida_server
wget https://github.com/frida/frida/releases/download/$VERSION/frida-server-$VERSION-android-x86_64.xz -P frida_server
wget https://github.com/frida/frida/releases/download/$VERSION/frida-server-$VERSION-android-arm.xz -P frida_server
wget https://github.com/frida/frida/releases/download/$VERSION/frida-server-$VERSION-android-arm64.xz -P frida_server
wget https://github.com/frida/frida/releases/download/$VERSION/frida-server-$VERSION-linux-x86.xz -P frida_server
wget https://github.com/frida/frida/releases/download/$VERSION/frida-server-$VERSION-linux-x86_64.xz -P frida_server
xz -d frida_server/frida*.xz
echo "Done."
