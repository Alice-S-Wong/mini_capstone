/* global axios */

axios.get("/api/products").then(function(response) {
  console.log(response.data["0"]["name"]);
});