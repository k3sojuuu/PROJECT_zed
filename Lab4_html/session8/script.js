alert("Hello");
//JS syntax aka cú pháp của JS
//variable
//var
//const
//let
let formatter = true
if(formatter){
    console.log('JS so easy')
}
//Staement
let mes = "Welcomto web"
console.log(mes)
if(window.localStorage){
    console.log('JS sp LocalStorage')
}

let counter = 100;
console.log(typeof(counter));

//object data type
let object = null;
console.log(typeof(typeof object));

let num = 100;
let price = 20.2;
let discount = 0.05;

console.log(Number.MAX_VALUE)
console.log(Number.MIN_VALUE)

//NaN:not a number
console.log('T'/2);//NaN

let s='JavaS'
s[4]='s'
console.log(s);

let studentObject ={};
console.log(typeof(studentObject));

let employee ={
    firstName : 'Nguyen',
    lastName : 'Dat'
};
 console.log(employee.firstName);
 console.log(employee.lastName);

 let contact ={
    firstName:'Nguyen',
    lastName: 'Trong Tan',
    emall: 'rpt@gmail.com',
    phone: '036633666',
    address: {
        buildding: '999',
        street: 'HTB',
        city: 'Hn',
        country: 'VN'
    }
 }
 //Sd 1 trong 2 cách để truy cập thuộc tính là sd . or []:

 delete contact.email;

 contact.firstName ='Ngo';
 
 let student ={
    firstName : 'Nguyen',
    lastName : 'Tan',

 }