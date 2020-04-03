#!/bin/bash
clear
RED='\033[0;31m'
GRN='\033[0;32m'
BLU='\033[0;34m'
NC='\033[0m'
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd "$parent_path"
echo ""
echo ""
echo -e "『xxx已损坏，无法打开』或者 『来自身份不明开发者』修复补丁 ${RED}by zhinin.com${NC}"
echo ""
echo -e "${BLU}请输入开机密码，输入完成后按下回车键（输入过程中密码是看不见的）${NC}"
echo ""
echo ""
sudo spctl --master-disable
app_path=$( find "$parent_path" -name '*.app' -maxdepth 1)
app_name=${app_path##*/}
app_bashname=${app_name// /\ }
sudo xattr -rd com.apple.quarantine /Applications/"$app_bashname"
echo ""
echo ""
echo -e "${GRN}修复成功，更多精品Mac软件请访问，www.zhinin.com${NC}"