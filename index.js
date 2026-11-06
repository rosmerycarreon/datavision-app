const http = require('http');
const port = 80;

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain');
  res.end('DataVision Analytics - Aplicacion Desplegada con AWS CodeDeploy!\n');
});

server.listen(port, () => {
  console.log(`Servidor corriendo en el puerto ${port}`);
});