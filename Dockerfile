FROM alpine:3.9

RUN apk add --update --no-cache \
        ruby \
        ruby-dev \
        ruby-ffi \
        && \
    gem install --no-document sass

WORKDIR /app

CMD ["sass"]