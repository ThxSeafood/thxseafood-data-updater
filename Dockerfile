FROM soumyaray/ruby-http:2.4.3

WORKDIR /worker

COPY / .

RUN apk --update add --virtual build_deps \
    build-base ruby-dev libc-dev linux-headers \
    openssl-dev postgresql-dev sqlite-dev libxml2-dev libxslt-dev && \
    bundle install && \
    rake db:migrate

CMD rake worker

