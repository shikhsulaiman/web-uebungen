var bar = document.querySelector('.list');
var x = document.querySelector('.cancel');

bar.addEventListener('click',()=>{
    document.querySelector('#ul').style.right='0';
    bar.style.display='none';
    x.style.display='block';
})

x.addEventListener('click',()=>{
    document.querySelector('#ul').style.right='-1000px';
    x.style.display='none';
    bar.style.display='block';
})

function validation(){
    var inp1 = document.querySelector('.inputname').value;
    var inp2 = document.querySelector('.inputsurname').value;
    var inp3 = document.querySelector('.inputemail').value;
    var inp4 = document.querySelector('.inputsubject').value;
    var text = document.querySelector('.textarea').value;
    if(inp1.trim() == ""){
         document.querySelector('.inputi').innerHTML='Input Name';
         document.querySelector('.inputname').style.borderColor='red';       
         return false;
    }else if(inp2.trim() ==""){
        document.querySelector('.inputi-2').innerHTML='Input Surname';
        document.querySelector('.inputsurname').style.borderColor='red';
        return false;
    }else if(inp3.trim() ==""){
        document.querySelector('.inputi-3').innerHTML='Input Email';
        document.querySelector('.inputemail').style.borderColor='red';
        return false;
    }else if(inp4.trim() ==""){
        document.querySelector('.inputi-4').innerHTML='Input Subject';
        document.querySelector('.inputsubject').style.borderColor='red';
        return false;
    }else if(text.trim() ==""){
        document.querySelector('.inputi-5').innerHTML='Write Your Message';
        document.querySelector('.inputi-5').style.color='red';
        document.querySelector('.textarea').style.borderColor='red';
        return false;
    }else{
        alert('Message Sent')
        return true;
    }
}

var border = document.querySelector('.inputname');
var border2 = document.querySelector('.inputsurname');
var border3 = document.querySelector('.inputemail');
var border4 = document.querySelector('.inputsubject');
var border5 = document.querySelector('.textarea');
border.addEventListener('keyup',()=>{
    document.querySelector('.inputname').style.borderColor='#EEEEEE';
});
border2.addEventListener('keyup',()=>{
    document.querySelector('.inputsurname').style.borderColor='#EEEEEE';
});
border3.addEventListener('keyup',()=>{
    document.querySelector('.inputemail').style.borderColor='#EEEEEE';
});
border4.addEventListener('keyup',()=>{
    document.querySelector('.inputsubject').style.borderColor='#EEEEEE';
});
border5.addEventListener('keyup',()=>{
    document.querySelector('.textarea').style.borderColor='#EEEEEE';
});