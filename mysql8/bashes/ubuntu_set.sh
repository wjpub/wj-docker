#!/bin/bash
# 首先，安装中文支持包language-pack-zh-hans：
apt-get -y install language-pack-zh-hans

# 然后，修改/etc/environment（在文件的末尾追加）：
echo '
LANG="zh_CN.UTF-8"
LANGUAGE="zh_CN:zh:en_US:en"' >> /etc/environment
# 再修改/var/lib/locales/supported.d/local(没有这个文件就新建，同样在末尾追加)：
touch /var/lib/locales/supported.d/local
echo '
en_US.UTF-8 UTF-8
zh_CN.UTF-8 UTF-8
zh_CN.GBK GBK
zh_CN GB2312' >> /var/lib/locales/supported.d/local
# 最后，执行命令：
locale-gen
# 对于中文乱码是空格的情况，安装中文字体解决。
apt-get -y install fonts-droid-fallback ttf-wqy-zenhei ttf-wqy-microhei fonts-arphic-ukai fonts-arphic-uming
# 设置时区
ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
