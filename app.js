const express = require('express');
const app =express();
const port =3000;
app.get('/', (req,res) => {
    res.send('<h1>Node Demo App </h1> <h4>Message: Success </h4> <p> Version 4.0 </p> <h5> Thank You </h5>')
})

app.get('/products' , (req,res) => {
    res.send([
        {
            productId :'101',
            price:100
        },
        {
            productId:'102',
            price:150
        }
    ])
})
app.listen(port, () => {
    console.log(`Demo app is up and listening to port: ${port}`);
    
})