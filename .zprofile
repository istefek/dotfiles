# Only run on macOS

if [[ "$OSTYPE" == "darwin"* ]]; then
	# needed for brew
	eval "$(/opt/homebrew/bin/brew shellenv)"
  export XDG_RUNTIME_DIR="$HOME"/Library/Caches/TemporaryItems
fi

# Setting PATH for Python 3.11
PATH="/Library/Frameworks/Python.framework/Versions/3.11/bin:${PATH}"
export PATH
eval "$(/opt/homebrew/bin/brew shellenv)"

# Created by `pipx` on 2024-06-03 05:46:41
export PATH="$PATH:/Users/ivan/.local/bin"

# Only run these on Ubuntu and Fedora

if [[ $(grep -E "^(ID|NAME)=" /etc/os-release | grep -Eq "ubuntu|fedora")$? == 0 ]]; then
	# needed for brew to work
	eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

export XDG_CONFIG_HOME="$HOME"/.config
