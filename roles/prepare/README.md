# Prepare 角色

用于系统准备的角色，配置系统基本设置。

## 功能

- 配置系统时区
- 配置系统语言环境
- 更新系统软件包

## 变量

| 变量名               | 默认值             | 描述     |
|-------------------|-----------------|--------|
| `system.timezone` | `Asia/Shanghai` | 系统时区   |
| `system.locale`   | `zh_CN.UTF-8`   | 系统语言环境 |

## 示例

```yaml
# 使用默认配置
- hosts: all
  roles:
    - prepare

# 自定义配置
- hosts: all
  roles:
    - role: prepare
      vars:
        system:
          timezone: UTC
          locale: en_US.UTF-8
```

## 依赖

无

## 支持的平台

- Ubuntu
- Debian
- CentOS
- ArchLinux
- MacOSX
