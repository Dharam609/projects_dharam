const proxy = require("http-proxy-middleware");

module.exports = function (app) {
  app.use(
    proxy("/api", { target: "https://movie-assigment-backend.herokuapp.com/" })
  );
};