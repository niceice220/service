
# niceice app design

[toc]

## think_area

niceice是自我。
app内应不包含Niceice相关。
最终是个人的对外服务.
这个服务比较综合。
还是应该有个称号
就叫：冰

## 功能

## principle

* 遵循最简原则

## 目录组织架构

```puml

@startmindmap
!include E:\niceice\knowledge\tool\markdown\my.iuml

* lib
** main.dart
** common
*** common.dart
*** util.dart
*** material.dart,flutter_bloc.dart...
*** theme.dart
*** constant.dart
** components
*** connect_server
**** bloc
*** account
**** bloc
*** navigator
**** bloc
*** personal_info
**** bloc
*** address_book
**** bloc

@endmindmap
```

## 启动页面

启动页面 = 大屏master + slave, 小屏则是： 导航页面
暂时都一样的，后续再做优化调整

## 待优化

* niceice.cn改成可配置的服务器url地址 k8s configmap
