"use strict";


const cart = [];

function addItem(name, price) {
    for (let i = 0; i < cart.length; i += 1) {
        if (cart[i].name === name) {
            cart[i].qty += 1
            return
        }
    }
    const item = {name: name, price: price, qty: 1}
    cart.push(item)
}

function showItems() {
    let qty = 0
    for (let i = 0; i < cart.length; i += 1) {
        qty += cart [i].qty;
    }
    console.log(`You have ${qty} items in your cart.`)

    for (let i = 0; i < cart.length; i += 1) {
        console.log(`${cart[i].name} $${cart[i].price} * ${cart[i].qty}`)
    }

    let total = 0 //store running total
    for (let i = 0; i < cart.length; i += 1) {
        total += cart[i].price * cart[i].qty
    }
    console.log(`Total in cart: $${total}`)
}
addItem('apple', 0.99)
addItem('apple', 0.99)
addItem('pizza', 4.99)
showItems()
// const sizeSubmit = document.getElementById('toCart');
// const kids = document.getElementById('kids');
// const adult= document.getElementById('adult');
//
//
//
//
// const sizeCheck = ()=>{
//     let item = {};
//     item.name = masks;
//     if (kids.checked) {
//         item.size = "Kids"
//         item.price = 8.00;
//     }else if (adult.checked) {
//         item.size = "Adult";
//         item.price = 10.00;
//     }else{
//         return;
//     }
//     cartItems.push(item);
//     renderReceipt();
// }
// sizeSubmit.addEventListener('click',sizeCheck);


