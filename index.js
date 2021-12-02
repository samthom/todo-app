const express = require("express");

const port = 8000;
// Create express app instance
const app = express();
// Simple index route
app.get("/", (req, res) => res.send("Hello world"));
// Start server
app.listen(port, () => console.log(`Server started at port ${port}`))