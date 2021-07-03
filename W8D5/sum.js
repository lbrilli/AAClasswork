console.log("Sum Exercises")

//With Arguments keyword
function sum() {
    let sum = 0;
arguments.forEach (num => sum+= num);
return sum;
}

console.log("arguments keyword")
console.log(sum(1, 2, 3, 4));
console.log(sum(1, 2, 3, 4, 5));


//...rest operator
function sum(...arguments) {
    let sum = 0;
    arguments.forEach(num => sum += num);
    return sum;
}

console.log("...rest operator")
console.log(sum(1, 2, 3, 4));
console.log(sum(1, 2, 3, 4, 5));