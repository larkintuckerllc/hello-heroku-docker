FROM node:10.15.0-alpine
WORKDIR /app
COPY . /app
RUN ["npm", "install"]
RUN ["npm", "run", "build-ts"]
# EXPOSE 3000
RUN adduser -D myuser
USER myuser
CMD ["npm", "run", "start"]
