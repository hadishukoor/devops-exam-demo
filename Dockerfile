FROM eclipse-temurin:17


WORKDIR /app


COPY target/*.war app.war


EXPOSE 8082

CMD ['java', '-jar', 'app.war']
