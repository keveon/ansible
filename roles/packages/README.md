# Packages 角色

用于安装和配置系统软件包。

## 功能

- 安装通用软件包
- 安装系统特定软件包
- 更新软件包缓存

## 变量

| 变量名                  | 默认值                   | 描述                 |
|----------------------|-----------------------|--------------------|
| `common_packages`    | `[]`                  | 通用软件包列表            |
| `ubuntu_packages`    | `['build-essential']` | Ubuntu 特定软件包列表     |
| `debian_packages`    | `['build-essential']` | Debian 特定软件包列表     |
| `centos_packages`    | `[]`                  | CentOS 特定软件包列表     |
| `archlinux_packages` | `['base-devel']`      | Arch Linux 特定软件包列表 |
| `macosx_packages`    | `[]`                  | macOS 特定软件包列表      |

## 示例

```yaml
# 使用默认配置
- hosts: all
  roles:
    - packages

# 自定义配置
- hosts: all
  roles:
    - role: packages
      vars:
        common_packages:
          - git
          - curl
          - wget
          - htop
          - tmux
          - rsync
        ubuntu_packages:
          - build-essential
          - python3-dev
        debian_packages:
          - build-essential
          - python3-dev
        centos_packages:
          - gcc
          - gcc-c++
          - make
        archlinux_packages:
          - base-devel
          - python-pip
        macosx_packages:
          - cmake
          - ninja
```

## 依赖

无

## 支持的平台

- Ubuntu
- Debian
- CentOS
- ArchLinux
- MacOSX
