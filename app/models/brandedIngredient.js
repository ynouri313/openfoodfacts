const mongoose = require('mongoose');

const brandedIngredient = new mongoose.Schema({}, { strict: false });

module.exports = mongoose.model('brand_ingredients', brandedIngredient);
