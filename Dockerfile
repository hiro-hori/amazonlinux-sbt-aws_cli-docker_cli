FROM amazonlinux:1

RUN set -eux; \
  yum update -y; \
# install docker
  yum install -y docker; \
# install awscli
  curl -O https://bootstrap.pypa.io/get-pip.py; \
  python get-pip.py; \
  pip install awscli; \
  yum clean all
