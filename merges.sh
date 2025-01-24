#!/bin/bash

# 下载文件并添加标签
curl -s https://gh.llkk.cc/https://raw.githubusercontent.com/yuanxiawan/cfipv4db/refs/heads/main/cloudflare_ips.txt >v4.txt
curl -s https://gh.llkk.cc/https://raw.githubusercontent.com/hckwon767/cf-ip-list/refs/heads/main/cloudflare-ip.txt >v5.txt
curl -s https://gh.llkk.cc/https://raw.githubusercontent.com/hckwon767/cf-ip-list/refs/heads/main/cloudflare-ip1.txt >v6.txt

# 合并文件
cat v4.txt v5.txt v6.txt >v4v6.txt

# 清理临时文件
rm v4.txt v5.txt v6.txt

# 提交到git
git add v4v6.txt
git commit -m "Update IP list $(date +'%Y-%m-%d %H:%M:%S')"
git push origin main -f