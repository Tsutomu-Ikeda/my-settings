.DEFAULT_GOAL := help

list: ## Show dotfiles in this repo
	@bash "$(PWD)/commands.sh" list

install: ## Install dotfiles
	@bash "$(PWD)/commands.sh" install

clean: ## Remove dotfiles
	@bash "$(PWD)/commands.sh" clean

reinstall: clean install ## Reinstall dotfiles Environment

migrate-from-fish: ## Generate ~/.zsh_history from ~/.local/share/fish/fish_history
	@bash "$(PWD)/commands.sh" migrate --from-fish

help: ## Show help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) \
		| sort \
		| awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
