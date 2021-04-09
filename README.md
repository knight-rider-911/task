# task
start container:
docker run --rm -ti \
  -e SCRIPT_NAME=allbash.sh \
  -e LOG_NAME=access.log \
  -e ARCH_NGINX=true \
  -v $(pwd)/my.log:/path/to/log/in/container/my.log \
image:tag