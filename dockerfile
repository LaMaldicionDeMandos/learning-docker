# Let's use the official Passenger container.
FROM node:argon
MAINTAINER Marcelo Pasut pasutmarcelo@gmail.com
# Clone our private GitHub Repository
RUN apt-get install git
RUN git clone https://d32e54c77e92f6f810f766890cbad2e70d63b98e:x-oauth-basic@github.com/LaMaldicionDeMandos/very-basic-node-express-app.git /app/
RUN mkdir -p /home/app
RUN cp -R /app/* /home/app
WORKDIR /home/app
RUN npm install
EXPOSE 5000
CMD [ "npm", "start" ]
