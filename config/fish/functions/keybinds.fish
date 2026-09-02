function y
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	command yazi $argv --cwd-file="$tmp"
	if read -z cwd < "$tmp"; and [ "$cwd" != "$PWD" ]; and test -d "$cwd"
		builtin cd -- "$cwd"
	end
	command rm -f -- "$tmp"
end

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

alias ff='fastfetch'