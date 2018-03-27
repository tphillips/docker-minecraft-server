FROM ubuntu:16.04
RUN apt-get update; apt-get install -y default-jre-headless wget screen
RUN wget https://launcher.mojang.com/mc/game/1.12.2/server/886945bfb2b978778c3a0288fd7fab09d315b25f/server.jar
RUN echo eula=true > eula.txt
EXPOSE 25565
CMD java -Xmx1024M -Xms1024M -jar server.jar nogui
