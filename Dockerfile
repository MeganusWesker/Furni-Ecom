FROM node:latest

WORKDIR /app
COPY /backend/package*.json ./backend/

WORKDIR /app/backend
RUN npm install

WORKDIR /app/frontend
COPY /frontend/package*.json .
RUN npm install

WORKDIR /app
COPY . .

WORKDIR /app/frontend
RUN npm run build

WORKDIR /app/backend
ENV PORT=4000
ENV DB_LOCAl_URI=mongodb+srv://furniture:kSQCpOhvzbaRWyGX@ecommerce.g86ki.mongodb.net/furniture?retryWrites=true&w=majority
ENV JWT_SECRET=thisleonrequestingbackup
ENV JWT_EXPIRE=5d
ENV COOKIE_EXPRIE_TIME=7
ENV SMPT_MAIL=meganuswesker@gmail.com
ENV SMPT_PASSWORD=ukrxobxrbwemeomh
ENV SMPT_SERVICE=gmail
ENV SMPT_HOST=smtp.gmail.com
ENV SMPT_PORT=465
ENV CLOUDINARY_NAME=dtpzknjst
ENV CLOUDINARY_API_KEY=114288683792366
ENV CLOUDINARY_API_SECRET=R8jXjjSmTEMV77IvkAfMz4p4K94
ENV FRONTEND_URL1=http://localhost:3000
ENV STRIPE_API_KEY=pk_test_51KAByRSDov8uqpNWO2cu6eEDeKiX62rG00inqv86KLxua7VRpK7p738ZEP5jjIQz572Gn520Bb30kgiurHuVKDB800jryFLMLR
ENV STRIPE_SECRET_KEY=sk_test_51KAByRSDov8uqpNWE4GKUwr7bcQkYLwnMX2knwGRY29lofktwPilJT4f2hM0AbFMjNXYkaV98SS9SlKbOF77Svqj002FgrHvJH
ENV NODE_ENV=Development
ENV ISDOCKER=true

WORKDIR /app

EXPOSE 4000
ENTRYPOINT [ "node","backend/server.js" ]


