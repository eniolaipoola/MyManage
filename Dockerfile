#docker image from which Usermanager container will be created 
FROM node:carbon 

#make directory app
RUN mkdir /app  

#moved into the directory 
WORKDIR /app 

#copy package.json file into directory 
COPY package.json /app

#install all dependencies    
RUN npm install  

#copy project files 
COPY . /app               

EXPOSE 3000

CMD ["npm", "start"]
