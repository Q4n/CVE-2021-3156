
define iii
    catch exec
    run
end

# pwndbg的插件应该是, 之前手贱点了还原快照才发现回到了安装gef之前(
define ppp
    # 找flag
    search -4 0xdeadbeef heap
    search -s X/X heap
    # files
    search -8 0x73656c6966 heap
    # nis
    search -8 0x73696e heap
    search -s compat heap
    search -s QQQQQQ heap
end
