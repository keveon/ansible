# Starship 角色

用于安装和配置 Starship 提示符。

## 功能

- 安装 Starship
- 配置 Starship 主题
- 配置 Starship 模块

## 变量

无

## 示例

```yaml
# 使用默认配置
- hosts: all
  roles:
    - starship

# 自定义配置
- hosts: all
  roles:
    - role: starship
      vars:
        starship: [ ]

```

## 依赖

无

## 支持的平台

- Ubuntu
- Debian
- CentOS
- ArchLinux
- MacOSX
