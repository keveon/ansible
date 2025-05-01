.PHONY: help check run test clean docker fish neovim nodejs rust check-fish show-dist

# 默认目标
.DEFAULT_GOAL := help

# 颜色定义
BLUE := \033[36m
NC := \033[0m

# 帮助信息
help:
	@echo "\033[1;36mAnsible 自动化配置项目:\033[0m"
	@echo "\033[1;33m可用目标:\033[0m"
	@echo "  ${BLUE}check${NC}   检查 playbook 语法"
	@echo "  ${BLUE}run${NC}     运行所有 playbook"
	@echo "  ${BLUE}test${NC}    运行测试（不实际执行）"
	@echo "  ${BLUE}clean${NC}   清理临时文件"
	@echo ""
	@echo "\033[1;33m主要角色:\033[0m"
	@echo "  ${BLUE}docker${NC}  安装 Docker"
	@echo "  ${BLUE}fish${NC}    安装 Fish Shell"
	@echo "  ${BLUE}neovim${NC}  安装 Neovim"
	@echo "  ${BLUE}nodejs${NC}  安装 Node.js"
	@echo "  ${BLUE}rust${NC}    安装 Rust"
	@echo ""
	@echo "\033[1;33m其他剧本:\033[0m"
	@echo "  ${BLUE}check-fish${NC}    检查 Fish Shell 版本"
	@echo "  ${BLUE}show-dist${NC}     显示系统发行版信息"

# 检查 playbook 语法
check:
	ansible-playbook playbooks/prepare.yaml --syntax-check

# 运行所有 playbook
run:
	ansible-playbook playbooks/prepare.yaml

# 运行测试（不实际执行）
test:
	ansible-playbook playbooks/prepare.yaml --check

# 清理临时文件
clean:
	find . -type f -name "*.retry" -delete
	find . -type f -name "*.pyc" -delete
	find . -type d -name "__pycache__" -delete
	find . -type d -name ".ansible" -delete

# 安装 Docker
docker:
	ansible-playbook playbooks/prepare.yaml --tags docker

# 安装 Fish Shell
fish:
	ansible-playbook playbooks/prepare.yaml --tags fish

# 安装 Neovim
neovim:
	ansible-playbook playbooks/prepare.yaml --tags neovim

# 安装 Node.js
nodejs:
	ansible-playbook playbooks/prepare.yaml --tags nodejs

# 安装 Rust
rust:
	ansible-playbook playbooks/prepare.yaml --tags rust

# 检查 Fish Shell 版本
check-fish:
	ansible-playbook playbooks/check_fish_releases.yaml

# 显示系统发行版信息
show-dist:
	ansible-playbook playbooks/show_distribution.yaml 