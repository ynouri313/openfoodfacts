const mongoose = require('../mongoDB');

const productSchema = new mongoose.Schema({
    _id: String,
    product_name: String,
    ecoscore_score: Number,
    nutriscore_grade: String,
    nova_groups: String,
    categories: [String]
}, { collection: 'aliments' });

const Product = mongoose.model('aliments', productSchema);
module.exports = Product;
