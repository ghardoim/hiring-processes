FROM bitnami/rails:latest AS build

WORKDIR /app
COPY . /app/

EXPOSE 3000

# RUN ["bundle", "add", "cssbundling-rails"]
# RUN ["rails", "css:install:bootstrap"]

RUN ["bundle", "install", "--gemfile", "Gemfile"]
RUN ["rails", "db:migrate"]

CMD ["rails", "s", "-b", "0.0.0.0"]