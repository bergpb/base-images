BUILDER_NAME     := bergpb/python3-slim-builder
BUILDER_TAG      := ${TAG}
BUILDER_IMG      := ${BUILDER_NAME}:${BUILDER_TAG}
BUILDER_LATEST   := ${BUILDER_NAME}:latest

LOCALES_NAME      := bergpb/python3-slim-locales
LOCALES_TAG       := ${TAG}
LOCALES_IMG       := ${LOCALES_NAME}:${LOCALES_TAG}
LOCALES_LATEST    := ${LOCALES_NAME}:latest

build:
	docker build -t ${BUILDER_NAME} ./builder/.
	docker build -t ${LOCALES_NAME} ./locales/.

tag:
	docker tag ${BUILDER_NAME} ${BUILDER_IMG}
	docker tag ${BUILDER_IMG} ${BUILDER_LATEST}

	docker tag ${LOCALES_NAME} ${LOCALES_IMG}
	docker tag ${LOCALES_IMG} ${LOCALES_LATEST}

push:
	docker push ${BUILDER_IMG}
	docker push ${BUILDER_LATEST}

	docker push ${LOCALES_IMG}
	docker push ${LOCALES_LATEST}

