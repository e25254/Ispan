const inputname = document.getElementById('inputname')
const mydiv = document.getElementById('mydiv')
inputname.addEventListener('input' , function(){
    mydiv.innerText = inputname.value;
    console.log(inputname.value)
})

inputname.addEventListener('blur',function(){
    mydivblur.innerText = inputname.value
})


//blur => 使用者離開物件會觸發這個事件

