# ###########################################################
# Colors
# ###########################################################
Green := \033[0;32m
Yellow := \033[0;33m
Red := \033[0;31m
NC := \033[0m

# ###########################################################
# Colorized output
# ###########################################################
echo_ok = printf '$(Green)%s$(NC)\n' "$(1)"
echo_warn = printf '$(Yellow)%s$(NC)\n' "$(1)"
echo_error = printf '$(Red)ERROR: %s$(NC)\n' "$(1)"

.PHONY: all

all: homebrew zsh sketchybar stow ## Run all
	@$(call echo_ok,All done);

help: ## Print help message
	@echo "$$(grep -hE '^\S+:.*##' $(MAKEFILE_LIST) | sed -e 's/:.*##\s*/:/' -e 's/^\(.\+\):\(.*\)/\\033[36m\1\\033[m:\2/' | column -c2 -t -s :)"

# ###########################################################
# Stow
# ###########################################################
stow: ## Stow configs
	@for p in $(shell find .config -mindepth 1 -maxdepth 1 -type d -printf '%f\n'); do \
		echo "stow $$p"; stow -S -d .config -t "$$HOME/.config" "$$p" || true; \
	done

# TODO: setup sync
link-configs: ## Symlink all dirs from ./.config to ~/.config
	@cd "$(HOME)/dotfiles/.config" && for d in */; do dst="$(HOME)/.config/$${d%/}"; [ -e "$$dst" ] && [ ! -L "$$dst" ] && { echo "SKIP $$dst (exists)"; continue; }; ln -sfn "$$(pwd)/$$d" "$$dst"; echo "LINK $$dst"; done


# ###########################################################
# zsh
# ###########################################################
zsh: ## Install zsh
	@if which zsh &>/dev/null; then \
		$(call echo_ok,zsh already installed.); \
	else \
		$(call echo_error,zsh not installed. Installing zsh...); \
		brew install zsh; \
		chsh -s "$$(which zsh)"; \
		$(call echo_ok,zsh installed!); \
	fi

# ###########################################################
# Homebrew
# ###########################################################

homebrew: ## Install/Update homebrew, homebrew dependecies
	@if which brew &>/dev/null; then \
		$(call echo_ok,Homebrew already installed. Getting updates...); \
		brew update; \
		brew doctor; \
	else \
		$(call echo_warn,Installing homebrew...); \
		/bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"; \
	fi
	$(call echo_ok,Install homebrew dependecies...)
	/bin/bash ./.config/scripts/brew/install.sh

# ###########################################################
# pacman
# ###########################################################

dump: ## Dump all packages, including AUR
	@paru -Qqe > "./pacman.txt"

restore: ## Restore all packages, including AUR
	@paru -S --needed - < "./pacman.txt"
