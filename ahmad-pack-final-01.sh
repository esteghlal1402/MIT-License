#!/bin/bash

clear
echo -e "\e[34m🔐 Ahmad Encryptor CLI\e[0m"
echo -e "\e[32m1) رمزگذاری متن\e[0m"
echo -e "\e[31m2) رمزگشایی متن\e[0m"
echo -e "\e[33m0) خروج\e[0m"
read -p "انتخاب شما: " choice

if [ "$choice" == "1" ]; then
    read -p "متن برای رمزگذاری: " input
    echo "$input" | base64 > encoded-output.txt
    echo -e "\e[32m✅ متن رمزگذاری شد و ذخیره شد در encoded-output.txt\e[0m"
elif [ "$choice" == "2" ]; then
    if [ -f encoded-output.txt ]; then
        decoded=$(base64 -d encoded-output.txt)
        echo -e "\e[36m🔓 متن رمزگشایی شده: $decoded\e[0m"
    else
        echo -e "\e[31m⛔ فایل رمزگذاری‌شده پیدا نشد!\e[0m"
    fi
else
    echo -e "\e[35m👋 خداحافظ احمد جان!\e[0m"
fi
