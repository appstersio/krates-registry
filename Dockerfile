FROM registry:2.7.1

ENV REGISTRY_STORAGE_DELETE_ENABLED=true
ADD ./run.sh /entrypoint.sh
