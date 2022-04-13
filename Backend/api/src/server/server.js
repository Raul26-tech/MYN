import express from "express";

const server = express();

server.use(express.json());

server.listen(3001);

server.get("/", (req, res) => {
  return res.json({ message: "Deu certo" });
});
