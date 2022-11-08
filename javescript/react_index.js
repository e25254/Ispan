document.getElementById('plus').addEventListener('click',()=>{
    document.getElementById('total').innerText = Number(document.getElementById('total').innerText) + 1
})
document.getElementById('minus').addEventListener('click',()=>{
    document.getElementById('total').innerText = Number(document.getElementById('total').innerText) - 1
})