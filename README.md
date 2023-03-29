<style>
/* 全局属性
 * 页边距 padding: 30px;
 * 全文字体 font-family: ptima-Regular;
 * 英文换行 word-break: break-all;
 */
#nice {
}
/* 段落，下方未标注标签参数均同此处
 * 上边距 margin-top: 5px;
 * 下边距 margin-bottom: 5px;
 * 行高 line-height: 26px;
 * 词间距 word-spacing: 3px;
 * 字间距 letter-spacing: 3px;
 * 对齐 text-align: left;
 * 颜色 color: #3e3e3e;
 * 字体大小 font-size: 16px;
 * 首行缩进 text-indent: 2em;
 */
#nice p {
}
/* 一级标题 */
#nice h1 {
}
/* 一级标题内容 */
#nice h1 .content {
}
/* 一级标题修饰 请参考有实例的主题 */
#nice h1:after {
}
/* 二级标题 */
#nice h2 {
  border-bottom: 2px solid rgb(239, 112, 96);
  font-size: 1.3em;
}
/* 二级标题内容 */
#nice h2 .content {
  display: inline-block;
  font-weight: bold;
  background: rgb(239, 112, 96);
  color: #ffffff;
  padding: 3px 10px 1px;
  border-top-right-radius: 3px;
  border-top-left-radius: 3px;
  margin-right: 3px;
}
/* 二级标题修饰 请参考有实例的主题 */
#nice h2:after {
  display: inline-block;
  content: " ";
  vertical-align: bottom;
  border-bottom: 36px solid #efebe9;
  border-right: 20px solid transparent;
}
/* 三级标题 */
#nice h3 {
}
/* 三级标题内容 */
#nice h3 .content {
}
/* 三级标题修饰 请参考有实例的主题 */
#nice h3:after {
}
/* 无序列表整体样式
 * list-style-type: square|circle|disc;
 */
#nice ul {
}
/* 有序列表整体样式
 * list-style-type: upper-roman|lower-greek|lower-alpha;
 */
#nice ol {
}
/* 列表内容，不要设置li
 */
#nice li section {
}
/* 引用
 * 左边缘颜色 border-left-color: black;
 * 背景色 background: gray;
 */
#nice .multiquote-1 {
  border-left-color: rgb(239, 112, 96);
  background: #fff9f9;
}
/* 引用文字 */
#nice .multiquote-1 p {
}
/* 链接 
 * border-bottom: 1px solid #009688;
 */
#nice a {
  color: rgb(239, 112, 96);
  border-bottom: 1px solid rgb(239, 112, 96);
}
/* 加粗 */
#nice strong {
}
/* 斜体 */
#nice em {
}
/* 加粗斜体 */
#nice em strong {
}
/* 删除线 */
#nice del {
}
/* 分隔线
 * 粗细、样式和颜色
 * border-top: 1px solid #3e3e3e;
 */
#nice hr {
}
/* 图片
 * 宽度 width: 80%;
 * 居中 margin: 0 auto;
 * 居左 margin: 0 0;
 */
#nice img {
}
/* 图片描述文字 */
#nice figcaption {
}
/* 行内代码 */
#nice p code, #nice li code {
  color: rgb(239, 112, 96);
}
/* 非微信代码块
 * 代码块不换行 display: -webkit-box !important;
 * 代码块换行 display: block;
 */
#nice pre code {
}
/*
 * 表格内的单元格
 * 字体大小 font-size: 16px;
 * 边框 border: 1px solid #ccc;
 * 内边距 padding: 5px 10px;
 */
#nice table tr th,
#nice table tr td {
}
/* 脚注文字 */
#nice .footnote-word {
  color: #ff3502;
}
/* 脚注上标 */
#nice .footnote-ref {
  color: rgb(239, 112, 96);
}
/* "参考资料"四个字 
 * 内容 content: "参考资料";
 */
#nice .footnotes-sep:before {
}
/* 参考资料编号 */
#nice .footnote-num {
}
/* 参考资料文字 */
#nice .footnote-item p { 
}
/* 参考资料解释 */
#nice .footnote-item p em {
}
/* 行间公式
 * 最大宽度 max-width: 300% !important;
 */
#nice .block-equation svg {
}
/* 行内公式
 */
#nice .inline-equation svg {  
}

</style>

# 教程来自：https://songchenwen.com/tproxy-split-by-dns 大佬，这里只是做记录，也是自己探索配置的过程

# OpenClash

## 1. 插件设置 - 模式设置 - 运行模式： 切换到 Fake-IP（增强）模式

![openclash_1](pic/openclash_1.png)

## 2. 插件设置 - DNS 设置 - 本地 DNS 劫持 选择 禁用
## 3. 插件设置 - 流量控制 - 绕过中国大陆 IP 取消勾选
## 4. 插件设置 - 流量控制 - 仅允许内网 开启

![openclash_2](pic/openclash_2.png)
![openclash_3](pic/openclash_3.png)

## 5. 覆写设置 - DNS 设置 - 自定义上游 DNS 服务器 勾选
## 6. 覆写设置 - DNS 设置 - 追加上游 DNS 勾选
## 7. 覆写设置 - DNS 设置 - 追加默认 DNS 勾选
## 8. 覆写设置 - DNS 设置 - Fake-IP 持久化 勾选
## 9. 覆写设置 - DNS 设置 页面下方 NameServer，FallBack，Default-NameServer 里的 DNS 服务器全都取消勾选，我们只用运营商提供的 DNS 服务器就够了，一般运营商 DNS 都是最快的，也是 CDN 最优化的。

![openclash_4_1](pic/openclash_4_1.png)
![openclash_4_2](pic/openclash_4_2.png)

## 10. 插件设置 - GEO 数据库订阅 把 GeoIP Dat 和 GeoSite 这两个库的自动更新打开，都选 Loyalsoldier 的版本，这个是用来给 mosdns 用的。

![openclash_4_2](pic/openclash_4_0.png)

## 11. 插件设置 -> 开发者选项里，我们自定义一下 iptables 规则

![openclash_5](pic/openclash_5.png)
[填写到复写设置-开发者选项里](https://github.com/hsuyelin/mosdns-openclash-adguradhome/blob/main/files/openclash_developer.config)

# MosDNS

## 1. 新增文件在 /etc/mosdns/rule/ 下，并赋予相关权限

![mosdns_1](pic/mosdns_1.png)
[geoip2ipset.sh](https://github.com/hsuyelin/mosdns-openclash-adguradhome/blob/main/files/geoip2ipset.sh)

## 2. 选自定义配置文件，取消 DNS 转发的勾，然后我就直接贴配置了，注意 Clash DNS 端口要改成你自己在 OpenClash 里的配置，LAN IP-CIDR 也要改成你自己的内网配置，这里 mosdns 监听了 5335 端口。我的 Clash DNS 端口：7874，LAN IP-CIDR：192.168.88.1

![mosdns_2](pic/mosdns_2.png)
[填写到自定义规则列表-自定义配置里](https://github.com/hsuyelin/mosdns-openclash-adguradhome/blob/main/files/mosdns.config)

# ADGuardHome

## 1. 在 luci 页面上，开启端口重定向，选择重定向53端口到AdGuardHome

![adguard_1](pic/adguard_1.png)

## 2. 在 Web 管理页面上，设置 - DNS 设置中，上游 DNS 服务器内只填写一个 mosdns 的地址 127.0.0.1:5335 #mosdns，私人反向 DNS 服务器写上 127.0.0.1 #dnsmasq。DNS 缓存配置里面，缓存大小看你内存大小填写，乐观缓存勾上

![adguard_2](pic/adguard_2.png)

