# Node.js 角色

用于安装和配置 Node.js 运行时环境。

## 功能

- 安装 Node.js
- 配置 npm 镜像
- 安装全局 npm 包

## 变量

| 变量名                            | 默认值                              | 描述                  |
|--------------------------------|----------------------------------|---------------------|
| `nodejs.npm.registry`          | `https://registry.npmmirror.com` | npm 镜像地址，空字符串则为禁用镜像 |
| `nodejs.package_managers.yarn` | `false`                          | 启用包管理器 Yarn         |
| `nodejs.package_managers.pnpm` | `false`                          | 启用包管理器 Pnpm         |

## 示例

```yaml
# 使用默认配置
- hosts: all
  roles:
    - nodejs

# 自定义配置
- hosts: all
  roles:
    - role: nodejs
      vars:
        nodejs:
          npm:
            registry: https://registry.npmmirror.com
          package_managers:
            yarn: false
            pnpm: false
```

## 依赖

无

## 支持的平台

- Ubuntu
- Debian
- CentOS
- ArchLinux
- MacOSX
