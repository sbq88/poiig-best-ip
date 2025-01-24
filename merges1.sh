#!/bin/bash

# 下载文件并添加标签
curl -s https://raw.githubusercontent.com/TYOYO1/CFIP/refs/heads/main/ProxyIP/ipaddressapi.txt >api.txt
curl -s https://raw.githubusercontent.com/TYOYO1/CFIP/refs/heads/main/ProxyIP/pxyip.txt >pip.txt

# 合并文件
cat api.txt pip.txt >ipaddressapi.txt

# 清理临时文件
rm api.txt pip.txt

# 提交到git
git add ipaddressapi.txt
git commit -m "Update IP list $(date +'%Y-%m-%d %H:%M:%S')"
git push