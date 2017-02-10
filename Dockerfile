FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.14.6

RUN gem install dir_validator --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["validate-dir"]
CMD ["--help"]
