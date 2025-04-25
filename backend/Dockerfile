FROM openjdk:21-jdk-slim

WORKDIR /shopapi  
COPY . .

# 개행 및 권한 설정
RUN sed -i 's/\r$//' gradlew
RUN chmod +x ./gradlew

# 빌드 및 확인
RUN ./gradlew bootJar -x test
RUN ls -al build/libs

# 확정된 이름으로 복사
RUN cp build/libs/shopapi.jar shopapi.jar

ENTRYPOINT ["java", "-jar", "-Dspring.profiles.active=prod", "shopapi.jar"]
