AUTHOR?=imanuelchandra
REPOSITORY?=exmod

.PHONY: build
build_netpxe_boot:
	docker build -t ${AUTHOR}/${REPOSITORY}:${EXMOD_VERSION}  . \
			--progress=plain \
			--no-cache
	@echo
	@echo "Build finished. Docker image name: \"${AUTHOR}/${REPOSITORY}:${EXMOD_VERSION}\"."

.PHONY: run
run_netpxe_boot:
	docker run -it --rm --privileged=True --init --net host \
			-v ./app:/app \
	        -v ./config:/config \
			-v ./data:/data \
			-v ./log:/log \
			-v ./scripts:/scripts \
			${AUTHOR}/${REPOSITORY}:${EXMOD_VERSION} eth0