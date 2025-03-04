#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# 添加自定义插件源到 feeds.conf.default
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
echo 'src-git openclash https://github.com/vernesong/OpenClash' >>feeds.conf.default
echo 'src-git mosdns https://github.com/QiuSimons/openwrt-mos' >>feeds.conf.default
echo 'src-git adguardhome https://github.com/rufengsuixing/luci-app-adguardhome' >>feeds.conf.default
echo 'src-git packages https://git.openwrt.org/feed/packages.git' >>feeds.conf.default
echo 'src-git luci https://git.openwrt.org/project/luci.git' >>feeds.conf.default
echo 'src-git routing https://git.openwrt.org/feed/routing.git' >>feeds.conf.default
echo 'src-git telephony https://git.openwrt.org/feed/telephony.git' >>feeds.conf.default
