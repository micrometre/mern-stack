const {
  DB_USER,
  DB_PASSWORD,
  DB_HOST,
  DB_PORT,
  DB_NAME,
} = process.env;

module.exports = {
  //url: `mongodb://${DB_USER}:${DB_PASSWORD}@${DB_HOST}:${DB_PORT}/${DB_NAME}?authSource=admin`
  //url: `mongodb://mongo:27017/docker-node-mongo`
  //url: `mongodb://root:123456@localhost:27017/backend_db?authSource=admin`
  url: `mongodb://root:123456@localhost:27017/backend_db?authSource=admin`
};
