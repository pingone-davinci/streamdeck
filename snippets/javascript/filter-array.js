// Example
const __myArrayOfObjects__ = [{type:"sms"}, {type:"email"}, {type:"sms"}];

const filteredArray = __myArrayOfObjects__.filter(element => element.type === "sms");
console.log(filteredArray); 