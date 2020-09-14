"use strict";

$('#myModal').on('shown.bs.modal', function () {
    $('#myInput').trigger('focus')
})

$('#exampleModal').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget) // Button that triggered the modal
    var recipient = button.data('whatever') // Extract info from data-* attributes
    // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
    // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
    var modal = $(this)
    modal.find('.modal-title').text('New message to ' + recipient)
    modal.find('.modal-body input').val(recipient)
})

const receipt = document.getElementById("maskReceipt");
const renderReceipt = ()=> {
    let html = '';
    cartItems.forEach((c,i)=>{
        html+= renderItem(c,i);
    })
    receipt.innerHTML = html;
    cartNotification.innerText = cartItems.length > 0 ?  cartItems.length.toString(): "";
    return html;
}


let cartItems = [];
const sizeSubmit = document.getElementById('toCart');
const kids = document.getElementById('kids');
const adult= document.getElementById('adult');




const sizeCheck = ()=>{
    let item = {};
    item.name = masks;
    if (kids.checked) {
        item.size = "Kids"
        item.price = 8.00;
    }else if (adult.checked) {
        item.size = "Adult";
        item.price = 10.00;
    }else{
        return;
    }
    cartItems.push(item);
    renderReceipt();
}
sizeSubmit.addEventListener('click',sizeCheck);