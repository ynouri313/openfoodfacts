const mongoose = require('mongoose');

const mongoURL = process.env.MONGO_URI || 'mongodb://mongodb:27017/off';

mongoose.connect(mongoURL)
  .then(() => console.log('Connected to MongoDB'))
  .catch(err => console.error('MongoDB connection error:', err));

module.exports = mongoose;
