# Fish 函数目录

此目录用于存放 Fish Shell 的函数定义文件。

## 说明

- 每个函数应该单独放在一个 `.fish` 文件中
- 文件名必须与函数名完全相同
- 函数文件会被复制到 `~/.config/fish/functions/` 目录

## 示例

```fish
# 文件名：hello.fish
function hello
    echo "Hello, World!"
end
```

## 注意事项

1. 函数名应该使用小写字母
2. 避免使用特殊字符
3. 确保函数名具有描述性
4. 每个函数文件只包含一个函数定义
