#!/bin/bash

# 下载文件并添加标签
curl -s https://gh.llkk.cc/https://raw.githubusercontent.com/xj888xj/cfip-baipiao/refs/heads/main/ip443/HK.txt | sed 's/$/&#HK/' >hk.txt
curl -s https://gh.llkk.cc/https://raw.githubusercontent.com/xj888xj/cfip-baipiao/refs/heads/main/ip443/JP.txt | head -n 10 | sed 's/$/&#JP/' >jp.txt
curl -s https://gh.llkk.cc/https://raw.githubusercontent.com/xj888xj/cfip-baipiao/refs/heads/main/ip443/KR.txt | head -n 10 | sed 's/$/&#KR/' >kr.txt
curl -s https://gh.llkk.cc/https://raw.githubusercontent.com/xj888xj/cfip-baipiao/refs/heads/main/ip443/SG.txt | head -n 10 | sed 's/$/&#SG/' >sg.txt
curl -s https://gh.llkk.cc/https://raw.githubusercontent.com/xj888xj/cfip-baipiao/refs/heads/main/ip443/US.txt | head -n 10 | sed 's/$/&#US/' >us.txt
curl -s https://gh.llkk.cc/https://raw.githubusercontent.com/xj888xj/cfip-baipiao/refs/heads/main/ip443/GB.txt | head -n 6 | sed 's/$/&#GB/' >gb.txt
curl -s https://gh.llkk.cc/https://raw.githubusercontent.com/xj888xj/cfip-baipiao/refs/heads/main/ip443/AU.txt | head -n 6 | sed 's/$/&#AU/' >au.txt
curl -s https://gh.llkk.cc/https://raw.githubusercontent.com/xj888xj/cfip-baipiao/refs/heads/main/ip443/DE.txt | head -n 6 | sed 's/$/&#DE/' >de.txt
curl -s https://gh.llkk.cc/https://raw.githubusercontent.com/xj888xj/cfip-baipiao/refs/heads/main/ip443/NL.txt | head -n 6 | sed 's/$/&#NL/' >nl.txt

# 合并文件
cat hk.txt jp.txt kr.txt sg.txt us.txt gb.txt au.txt de.txt nl.txt>iphz.txt

# 清理临时文件
rm hk.txt jp.txt kr.txt sg.txt us.txt gb.txt au.txt de.txt nl.txt

# 提交到git
git add iphz.txt
git commit -m "Update IP list $(date +'%Y-%m-%d %H:%M:%S')"
git push