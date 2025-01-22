#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# 更新 feeds 并安装插件
./scripts/feeds update -a
./scripts/feeds install -a

# 安装额外的插件（确保所需插件都在 feeds 中）
./scripts/feeds install luci-app-openclash
./scripts/feeds install luci-app-passwall
./scripts/feeds install luci-app-mosdns
./scripts/feeds install luci-app-adguardhome
./scripts/feeds install docker

# 修改默认 IP（可选）
 sed -i 's/192.168.1.1/192.168.12.3/g' package/base-files/files/bin/config_generate

# 修改默认主题（可选）
# sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# 修改主机名（可选）
# sed -i 's/OpenWrt/Custom-Router/g' package/base-files/files/bin/config_generate
