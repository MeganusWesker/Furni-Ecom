const express = require("express");
const app = express();
const fileUpload = require("express-fileupload");
const cookieParser = require("cookie-parser");
const cors = require("cors");
const errorMidddleware = require("./middlewares/error");
const path = require("path");

// setting up config file yesa
if (process.env.NODE_ENV !== "PRODUCTION") {
  require("dotenv").config({ path: "config/config.env" });
}

app.use(express.json({ limit: "50mb" }));
app.use(cookieParser());
app.use(fileUpload());
app.use(express.urlencoded({ limit: "50mb", extended: true }));

app.use(
  cors({
    origin: [process.env.FRONTEND_URL, process.env.FRONTEND_URL1], // origin:"*" dosen't works with credentials:true,
    credentials: true,
    methods: ["GET", "POST", "PUT", "DELETE"],
  })
);

//app.use(bodyParser.urlencoded({extended:true}))

// Importing all routes
const products = require("./routes/products");
const user = require("./routes/auth");
const order = require("./routes/orders");
const payment = require("./routes/paymentRoute");

app.use("/api/v1", products);
app.use("/api/v1", user);
app.use("/api/v1", order);
app.use("/api/v1", payment);

if (process.env.ISDOCKER) {
  app.use(express.static(path.join(__dirname, "../frontend/build")));

  app.get("*", (req, res) => {
    res.sendFile(path.resolve(__dirname, "../frontend/build/index.html"));
  });
} else {
  app.get("/", (req, res) => {
    res.send("working");
  });
}

//middleware to handle errors
app.use(errorMidddleware);

module.exports = app;
