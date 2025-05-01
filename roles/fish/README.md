# Fish 角色

用于安装和配置 Fish Shell。

## 功能

- 安装 Fish Shell
- 配置 Fish Shell 主题
- 配置 Fish Shell 插件
- 设置 Fish Shell 为默认 Shell

## 变量

无

## 示例

```yaml
# 使用默认配置
- hosts: all
  roles:
    - fish

# 自定义配置
- hosts: all
  roles:
    - role: fish
      vars:
        fish: []
```

## 依赖

无

## 支持的平台

- Ubuntu
- Debian
- CentOS
- ArchLinux
- MacOSX
