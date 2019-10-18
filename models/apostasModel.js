const mongoose = require('mongoose');
const Schema = mongoose.Schema
const apostasSchema = new mongoose.Schema({
    tipo: Number,
    datahoraAposta: Date,
    data: Date,
    periodo: Number,
    i1: Number,
    i2: Number,
    i3: Number,
    i4: Number,
    i5: Number,
    i6: Number,
    i7: Number,
    i8: Number,
    i9: Number,
    i10: Number,
    v1: Number,
    v2: Number,
    v3: Number,
    v4: Number,
    v5: Number,
    v6: Number,
    v7: Number,
    v8: Number,
    v9: Number,
    v10: Number,
    ganhou: Boolean,
})
const apostas = mongoose.model('apostasSchema', apostasSchema)
module.exports = apostas