# Fish 配置片段目录

此目录用于存放 Fish Shell 的配置片段文件。

## 说明

- 配置文件使用数字前缀来控制加载顺序
- 文件会被复制到 `~/.config/fish/conf.d/` 目录
- 所有配置片段都会在 Fish 启动时自动加载

## 文件命名规范

- 使用数字前缀控制加载顺序（如：`00-`、`99-`）
- 数字前缀后的名称应该描述配置的用途
- 所有文件都应该使用 `.fish` 扩展名

## 示例

```fish
# 文件名：00-commons.fish
# 通用设置
set -gx EDITOR vim
set -gx LANG en_US.UTF-8

# 文件名：99-misc.fish
# 杂项设置
set fish_greeting ""
```

## 注意事项

1. 使用数字前缀确保配置按正确顺序加载
2. 避免在配置文件中定义函数（应该放在 functions 目录）
3. 避免在配置文件中定义补全规则（应该放在 completions 目录）
4. 配置文件应该只包含设置和变量定义
