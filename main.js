const express = require("express");
const app = express();

const PORT = process.env.PORT || 8000;

app.get("/", (req, res) => {
  return res.json({
    statusCode: 200,
    message: "Hi This is my devops assignment node server",
  });
});

app.listen(PORT, () => {
  console.log(`server started at ${PORT}`);
});
