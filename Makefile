prepare:
	./dev-scripts/enable-multi-arch

docker-arm64:
	./dev-scripts/build-backend prod
	docker buildx build --platform linux/arm64 --tag ghcr.io/alinbalutoiu/picoshare:latest . --build-context bin=bin

push:
	docker push ghcr.io/alinbalutoiu/picoshare:latest