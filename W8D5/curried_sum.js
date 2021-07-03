function curriedSum(numArgs) {
    let numbers = [];
    let insideSum = 0;

    return function _curriedSum(number) {
        numbers.push(number);
        if (numbers.length === numArgs) {
            numbers.forEach(num => insideSum += num);
            return insideSum
        } else {
            return _curriedSum
        }
    }
}

const sum = curriedSum(4);
console.log(sum(5)(30)(20)(1));