# Docker 角色

用于安装和配置 Docker 环境。

## 功能

- 安装 Docker
- 配置 Docker 镜像
- 配置 Docker 服务
- 安装 Docker 插件

## 变量

| 变量名 | 默认值 | 描述 |
|--------|--------|------|
| `docker.ipv6` | `false` | 是否启用 IPv6 |
| `docker.live_restore` | `true` | 是否启用热重载 |
| `docker.data_root` | `/var/lib/docker` | Docker 数据目录 |
| `docker.registry_mirrors` | `[]` | Docker 镜像仓库列表 |
| `docker.insecure_registries` | `[]` | 不安全的镜像仓库列表 |

## 示例

```yaml
# 使用默认配置
- hosts: all
  roles:
    - docker

# 自定义配置
- hosts: all
  roles:
    - role: docker
      vars:
        docker:
          registry_mirrors:
            - https://mirror.ccs.tencentyun.com
            - https://registry.docker-cn.com
```

## 依赖

无

## 支持的平台

- Ubuntu
- Debian
- CentOS
- ArchLinux
- MacOSX
