# Furni-Ecom: Your One-Stop E-Commerce Haven!

Welcome to Furni-Ecom, where shopping for anything you desire is a breeze! Say goodbye to the hassle of visiting physical stores and negotiating prices. Our platform offers a seamless experience, from browsing to purchasing, right at your fingertips.

!! You're Comfort is Our Goal

## What We Offer:

1. Extensive Product Range: Explore a wide variety of products, from furniture to home decor and beyond.
2. Convenient Filtering: Easily find what you need with filters for ratings, prices, categories, and more.
3. Simple Checkout: Sign up for free, add items to your cart, and enjoy doorstep delivery.

## Why Choose Furni-Ecom?

1. Affordable Prices: Say goodbye to bargaining headaches with reasonable prices.
2. User-Friendly Interface: Navigate effortlessly and find your perfect product in just a few clicks.
3. Prompt Service: Your comfort is our priority, ensuring timely delivery and excellent customer support.

[Experience the Magic of Furni-Ecom Live!](https://furniture-site-frontend.vercel.app/)

### Explore Furni-Ecom with Our Test User!

Discover the world of Furni-Ecom with our test user account, designed to showcase the platform's features and ease of use.

Test User Credentials:
Email: testman@gmail.com
Password: testMan

### Local Setup

Setting Furni-Ecom locally is easy follow the below steps:

1.  **Clone Project** <br>
    `git clone https://github.com/MeganusWesker/Furni-Ecom.git` <br> Just Open Vs Code or any other Ide in any location and paste the above git clone command in terminal it will
    download the whole Project for you
2.  **Install Dependency**<br>
    Open two terminals at the root location of the project then in In Order two install modules of both backend and frontend do cd backend in one terminal and cd frontend in second terminal, both terminal should look like in following:

    ![alt text](image.png)

    do npm i --force or npm i in both terminals

3.  **Add Config Variables**<br>
    Create a config.env file in the backend/config location. writing you're on env variables just to run this project is,feels Boring for you!. I got you just paste the following variables of mine in the config.env you just have created,
    <br>

    ```
    PORT=4000
    DB_LOCAl_URI=mongodb+srv://furniture:kSQCpOhvzbaRWyGX@ecommerce.g86ki.mongodb.net/furniture?retryWrites=true&w=majority
    JWT_SECRET=thisleonrequestingbackup
    JWT_EXPIRE=5d
    COOKIE_EXPRIE_TIME=7
    SMPT_MAIL=meganuswesker@gmail.com
    SMPT_PASSWORD=ukrxobxrbwemeomh
    SMPT_SERVICE=gmail
    SMPT_HOST=smtp.gmail.com
    SMPT_PORT=465
    CLOUDINARY_NAME=dtpzknjst
    CLOUDINARY_API_KEY=114288683792366
    CLOUDINARY_API_SECRET=R8jXjjSmTEMV77IvkAfMz4p4K94
    FRONTEND_URL1=http://localhost:3000
    STRIPE_API_KEY=pk_test_51KAByRSDov8uqpNWO2cu6eEDeKiX62rG00inqv86KLxua7VRpK7p738ZEP5jjIQz572Gn520Bb30kgiurHuVKDB800jryFLMLR
    STRIPE_SECRET_KEY=sk_test_51KAByRSDov8uqpNWE4GKUwr7bcQkYLwnMX2knwGRY29lofktwPilJT4f2hM0AbFMjNXYkaV98SS9SlKbOF77Svqj002FgrHvJH
    NODE_ENV=Development
    ISDOCKER=true
    ```

4.  **Run the Project** <br>
    Just run these scripts in the both terminals

          ```
          For Backend:
          npm run dev
          For Frontend:
          npm run start

          ```

    Make sure to run the script in the desired terminal

5.  **Use The Project** <br>
    In Browser search or click http://localhost:3000 you will se the project running there

### Run Locally using DockerImage

Running the project in a container is much easy if you just want to see the things working locally

1. **Build the Image**

   ```
   docker build -t you're-image-name .
   ```

   add whatever image name you want

2. **Run the Image**

   ```
   docker run -p 4000:4000 you're-image-name
   ```

3. **Use the Project**
   Search or Click http://localhost:4000/ and you will see the project running. Make sure to stop the container after use for that do the following:

   ```
   docker ps -> for getting the container Id
   docker stop containerId
   ```

### No Git? No Problem!

If you prefer not to clone or want a quick start, use our live link or pull the pre-deployed Docker image.

```
docker pull docker.io/meganuswesker/furnistyle:1.0.0

docker run -p 4000:4000 meganuswesker/furnistyle:1.0.0
```

This was all about running the project locally, live link and a short description of the project

Experience the convenience of online shopping with Furni-Ecom today!
