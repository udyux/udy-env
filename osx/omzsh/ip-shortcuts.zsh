#!zsh ~/.oh-my-zsh/custom

# route
function ip() {
	ip:$1
}

# LAN ip
function ip:lan() {
	_ip_=$(ipconfig getifaddr en0)
	echo "${_ip_}"
	echo -n "${_ip_}" | pbcopy
}

# WAN ip
function ip:wan() {
	_ip_=$(dig +short myip.opendns.com @resolver1.opendns.com)
	echo "${_ip_}"
	echo -n "${_ip_}" | pbcopy
}

# LAN dev server address
function ip:server() {
	_ip_=$(ipconfig getifaddr en0)
	echo "http://${_ip_}:8080"
	echo -n "http://${_ip_}:8080" | pbcopy
}
