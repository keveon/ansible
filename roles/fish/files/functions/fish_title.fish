function fish_title
    # 设置终端标题
    if test -n "$SSH_CONNECTION"
        # 如果是 SSH 连接，显示主机名
        echo (hostname)":$PWD"
    else
        # 否则显示当前目录
        echo $PWD
    end
end 