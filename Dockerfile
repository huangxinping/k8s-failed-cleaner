FROM ubuntu:16.04

COPY kubectl /
COPY delete_failed_pod.sh /
RUN chmod +x /kubectl && mv /kubectl /usr/local/bin/kubectl && mkdir /root/.kube

WORKDIR /
CMD ["bash", "delete_failed_pod.sh"]