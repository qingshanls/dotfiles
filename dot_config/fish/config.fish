source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end

# uv
fish_add_path "/home/qsls/.local/bin"

# 开启代理
function pon
    set -gx http_proxy http://127.0.0.1:7890
    set -gx https_proxy http://127.0.0.1:7890
    set -gx all_proxy socks5://127.0.0.1:7890
    echo "HTTP/HTTPS Proxy on"
end

# 关闭代理
function pof
    set -e http_proxy
    set -e https_proxy
    set -e all_proxy
    echo "HTTP/HTTPS Proxy off"
end