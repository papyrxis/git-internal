.PHONY: all build clean watch sync help

WORKSPACE := workspace

all: sync build

sync:
	@bash $(WORKSPACE)/scripts/sync.sh

build: sync
	@bash $(WORKSPACE)/scripts/build.sh main.tex

clean:
	@rm -rf build/
	@find . -name "*.aux" -o -name "*.log" -o -name "*.out" \
	   -o -name "*.toc" -o -name "*.bbl" -o -name "*.blg" | xargs rm -f

watch: sync
	@bash $(WORKSPACE)/scripts/build.sh -w main.tex

help:
	@echo "Papyrxis Workspace - Available targets:"
	@echo "  make sync   - Sync workspace components"
	@echo "  make build  - Build document"
	@echo "  make watch  - Watch mode (auto-rebuild)"
	@echo "  make clean  - Clean build artifacts"
	@echo "  make help   - Show this help"
