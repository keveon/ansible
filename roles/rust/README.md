# Rust 角色

用于安装和配置 Rust 开发环境。

## 功能

- 安装 Rust 工具链
- 配置 Rust 镜像
- 配置 Crates 镜像
- 安装 Rust 工具

## 变量

| 变量名                  | 默认值                                           | 描述             |
|----------------------|-----------------------------------------------|----------------|
| `rust.mirror.enable` | `true`                                        | 是否启用镜像         |
| `rust.mirror.url`    | `https://mirrors.ustc.edu.cn/rust-static`     | Rust 镜像地址      |
| `rust.crates.enable` | `true`                                        | 是否启用 Crates 镜像 |
| `rust.crates.url`    | `https://mirrors.ustc.edu.cn/crates.io-index` | Crates 镜像地址    |
| `rust.tools`         | `{}`                                          | Rust 工具配置      |

## 示例

```yaml
# 使用默认配置
- hosts: all
  roles:
    - rust

# 自定义配置
- hosts: all
  roles:
    - role: rust
      vars:
        rust:
          mirror:
            enable: true
            url: https://mirrors.aliyun.com/rust-static
          crates:
            enable: true
            url: https://mirrors.aliyun.com/crates.io-index
          tools:
            erdtree:
              enable: true
            eza:
              enable: true
            bat:
              enable: true
            ripgrep:
              enable: true
```

## 依赖

无

## 支持的平台

- Ubuntu
- Debian
- CentOS
- ArchLinux
- MacOSX
