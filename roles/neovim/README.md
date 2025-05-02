# Neovim 角色

用于安装和配置 Neovim 编辑器。

## 功能

- 安装 Neovim
- 配置 LazyVim
- 安装 Neovim 插件
- 配置 Neovim 主题

## 变量

| 变量名                     | 默认值                                  | 描述           |
|-------------------------|--------------------------------------|--------------|
| `neovim.lazyvim.repo`   | `https://github.com/LazyVim/starter` | LazyVim 仓库地址 |
| `neovim.lazyvim.branch` | `main`                               | LazyVim 分支   |

## 示例

```yaml
# 使用默认配置
- hosts: all
  roles:
    - neovim

# 自定义配置
- hosts: all
  roles:
    - role: neovim
      vars:
        neovim:
          lazyvim:
            repo: https://github.com/ayamir/nvimdots
            branch: main
```

## 依赖

- nodejs

## 支持的平台

- Ubuntu
- Debian
- CentOS
- ArchLinux
- MacOSX
