FROM eclipse-temurin:17


WORKDIR /app


COPY target/*.war app.war


EXPOSE 8083

CMD ['java', '-jar', 'app.war']
