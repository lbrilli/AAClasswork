//write function to read several numbers (interate?)
//

const readline = require('readline');

const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

function addNumbers(sum, numsLeft, completionCallback) {
    if (numsLeft > 0) {
        reader.question ("Enter a number: ", function (num1S) {
            const currentNum = parseInt(num1S); //parseInt => conver string to integerr

            sum += currentNum;
            console.log(sum);

            addNumbers(sum, numsLeft - 1, completionCallback);
        });
    } else if (numsLeft === 0) {
        completionCallback(sum);
    }
}

addNumbers(0, 5, (function (sum) {
    console.log(`Total Sum: ${sum}`);
    reader.close();
}));