# Let's use the official Passenger container.
FROM node:argon
MAINTAINER Marcelo Pasut pasutmarcelo@gmail.com
# Clone our private GitHub Repository
RUN git clone https://d32e54c77e92f6f810f766890cbad2e70d63b98e:x-oauth-basic@github.com/LaMaldicionDeMandos/pharmared.git /app/
RUN cp -R /app/* /home/app/
RUN chown app:app -R /home/app/
WORKDIR /home/app
RUN npm install
EXPOSE 8080
CMD [ "npm", "start" ]
