FROM amazonlinux:2.0.20190508

RUN set -eux; set -o pipefail; \
  yum update -y; \
  amazon-linux-extras install -y \
# install docker
    docker \
# install java to use sbt
    corretto8; \
# install sbt
  curl https://bintray.com/sbt/rpm/rpm | tee /etc/yum.repos.d/bintray-sbt-rpm.repo; \
  yum install -y sbt \
# install awscli
    awscli; \
# cleaning
  yum clean all; \
  rm -fr /var/cache/yum
