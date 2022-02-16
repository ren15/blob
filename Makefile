.PHONY: $(MAKECMDGOALS)


docker_build:
	bash upload.sh alpine-blob:1 data.txt 