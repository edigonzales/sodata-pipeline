FROM sogis/sodata:latest

COPY datasets.yml /config/datasets.yml

USER 1001

CMD ["./application", "--spring.config.location=classpath:/application.yml,optional:file:/config/datasets.yml"]
