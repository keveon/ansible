# Fish 补全目录

此目录用于存放 Fish Shell 的命令补全定义文件。

## 说明

- 每个补全定义应该放在一个 `.fish` 文件中
- 文件名应该与要补全的命令名相同
- 补全文件会被复制到 `~/.config/fish/completions/` 目录

## 示例

```fish
# 文件名：mycommand.fish
complete -c mycommand -f
complete -c mycommand -a "option1 option2 option3"
```

## 注意事项

1. 补全文件名应该与命令名完全匹配
2. 使用 `complete` 命令定义补全规则
3. 确保补全规则不会与其他命令冲突
4. 补全规则应该尽可能完整和准确
