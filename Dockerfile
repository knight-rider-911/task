FROM nginx:latest
# List of env vars expected by the app, but absent by default
ENV LOG_NAME=
ENV ARCH_NGINX=
ENV DIR_WITH_SCRIPTS="/scripts"
ENV SCRIPT_NAME= 
WORKDIR ${DIR_WITH_SCRIPTS}
COPY . .
RUN chmod +x script.sh allbash.sh
ENTRYPOINT ["/bin/bash"]
CMD ["script.sh"]