setup:
	sh tools/setup_environment.sh

init:
	~/.local/bin/poetry shell

run:
	python3 manager.py start