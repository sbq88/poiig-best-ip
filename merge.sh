#!/bin/bash

# 下载文件并添加标签
curl -s https://gh.llkk.cc/https://raw.githubusercontent.com/5yfx/CF_HK_US_EU_IP/refs/heads/main/%E9%A6%99%E6%B8%AF.txt | head -n 10 | sed 's/$/&#香港/' >hk.txt
curl -s https://gh.llkk.cc/https://raw.githubusercontent.com/5yfx/CF_HK_US_EU_IP/refs/heads/main/%E7%BE%8E%E5%9B%BD.txt | head -n 10 | sed 's/$/&#美国/' >us.txt
curl -s https://gh.llkk.cc/https://raw.githubusercontent.com/5yfx/CF_HK_US_EU_IP/refs/heads/main/%E8%8B%B1%E5%9B%BD.txt | head -n 10 | sed 's/$/&#英国/' >uk.txt
curl -s https://gh.llkk.cc/https://raw.githubusercontent.com/5yfx/CF_HK_US_EU_IP/refs/heads/main/%E4%BA%9A%E6%B4%B2%E5%8F%8D%E4%BB%A3IP.txt >as.txt
curl -s https://gh.llkk.cc/https://raw.githubusercontent.com/5yfx/CF_HK_US_EU_IP/refs/heads/main/%E5%85%A8%E7%90%83%E5%8F%8D%E4%BB%A3IP.txt >qq.txt

# 合并文件
cat hk.txt us.txt uk.txt as.txt qq.txt >result.txt

# 清理临时文件
rm hk.txt us.txt uk.txt as.txt qq.txt

# 提交到git
git add result.txt
git commit -m "Update IP list $(date +'%Y-%m-%d %H:%M:%S')"
git push