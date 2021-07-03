Function.prototype.curry(numArgs) = function finalFunc() {
    let args = []
    args.push(arguments.shift);
    if (numArgs === args.length) {
    } else {
        Function.prototype.apply(numArgs);
    }
}

const sum = curry(4);
console.log(sum(5)(30)(20)(1));