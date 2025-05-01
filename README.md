# 🚀 Ansible 自动化配置

这是一个使用 Ansible 进行系统自动化配置的项目，支持 Linux 和 macOS 系统。

## ✨ 功能特性

### 🖥️ 系统环境配置

- 🌍 时区设置
- 🌐 语言环境配置
- 🔄 系统更新

### 🛠️ 开发环境配置

- 🐟 Fish Shell
- 🦀 Rust 工具链
- 🚀 Starship 提示符
- 📦 Node.js
- 📝 Neovim
- 🐳 Docker

## 📋 系统要求

- Ansible >= 2.13
- Python >= 3.8
- 支持的操作系统：
  - 🐧 Linux (Debian/Ubuntu, RHEL/CentOS)
  - 🍎 macOS

## 🚀 快速开始

1. 克隆仓库：

   ```bash
   git clone https://github.com/keveon/ansible.git
   cd ansible
   ```

2. 配置主机清单：

   编辑 `inventory/hosts.yaml` 文件，添加您的主机信息。

3. 运行 playbook：

   ```bash
   # 使用 Makefile
   make run

   # 或者直接使用 ansible-playbook
   ansible-playbook playbooks/prepare.yaml

   # 运行特定角色
   make docker  # 安装 Docker
   make fish    # 安装 Fish Shell
   make neovim  # 安装 Neovim
   make nodejs  # 安装 Node.js
   make rust    # 安装 Rust

   # 查看详细输出
   ansible-playbook playbooks/prepare.yaml -vv
   ```

## 📁 项目结构

```text
.
├── ansible.cfg                   # Ansible 配置文件
├── inventory/                    # 主机清单目录
│   └── hosts.yaml                # 主机清单文件
├── Makefile                      # 项目构建文件
├── playbooks/                    # Playbook 目录
│   ├── prepare.yaml              # 主 playbook
│   ├── check_fish_releases.yaml  # 检查 Fish Shell 版本
│   └── show_distribution.yaml    # 显示系统发行版信息
└── roles/                        # 角色目录
    ├── docker/                   # Docker 角色
    ├── fish/                     # Fish Shell 角色
    ├── neovim/                   # Neovim 角色
    ├── nodejs/                   # Node.js 角色
    ├── packages/                 # 软件包角色
    ├── prepare/                  # 系统准备角色
    ├── rust/                     # Rust 角色
    └── starship/                 # Starship 角色
```

## ⚙️ 配置说明

### 📝 主机清单

在 `inventory/hosts.yaml` 中配置您的主机：

```yaml
all:
  children:
    example:
      hosts:
        example-1:
          ansible_host: example.com
      vars:
        ansible_user: ansible
        ansible_ssh_private_key_file: ~/.ssh/id_rsa
    local:
      hosts:
        localhost:
          ansible_connection: local
```

### 🔧 变量配置

- 📂 角色变量：各角色目录下的 `defaults/main.yaml` 和 `vars/main.yaml`
- 📂 主机变量：`inventory/host_vars/` 目录
- 📂 组变量：`inventory/group_vars/` 目录

## 💻 开发说明

### 🛠️ 使用 Makefile

项目提供了 Makefile 来简化常用操作：

```bash
# 显示帮助信息
make help

# 目标:
make check  # 检查 playbook 语法
make run    # 运行所有 playbook
make test   # 运行测试（不实际执行）
make clean  # 清理临时文件

# 角色:
make docker  # 安装 Docker
make fish    # 安装 Fish Shell
make neovim  # 安装 Neovim
make nodejs  # 安装 Node.js
make rust    # 安装 Rust

# 剧本:
make check-fish  # 检查 Fish Shell 版本
make show-dist   # 显示系统发行版信息
```

### ➕ 添加新角色

1. 创建角色目录：

```bash
ansible-galaxy init roles/new-role
```

2. 在 `playbooks/prepare.yaml` 中添加新角色：

```yaml
- name: 新角色名称
  hosts: all
  become: true
  roles:
    - role: new-role
```

### 🧪 测试

```bash
# 语法检查
make check

# 试运行（不实际执行）
make test

# 详细输出
ansible-playbook playbooks/prepare.yaml -vv
```

## 📄 许可证

MIT License

## 🤝 贡献指南

1. 🍴 Fork 本仓库
2. 🌿 创建特性分支
3. 💾 提交更改
4. 📤 推送到分支
5. 📬 创建 Pull Request
