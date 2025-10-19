FROM ruby:bookworm
WORKDIR /license-generator
COPY ./ ./
RUN gem install gitlab-license

VOLUME /license-generator/build
ENV LICENSE_NAME="Xeon Engineering Team"
ENV LICENSE_COMPANY="Xeon Technology Ltd."
ENV LICENSE_EMAIL="admin@xeon.email"
ENV LICENSE_PLAN="ultimate"
ENV LICENSE_USER_COUNT="10000"
ENV LICENSE_EXPIRE_YEAR="2800"

CMD [ "./make.sh" ]