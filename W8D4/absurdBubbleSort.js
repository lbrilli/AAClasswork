const readline = require("readline");

const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

// Write this first.
function askIfGreaterThan(el1, el2, callback) {
    reader.question(`Is ${el1} is grater than ${el2}?(Yes/No)`, function(str) {
        if (str == 'Yes') {
            callback(true);
        } else if (str == 'No') {
            callback(false);
        }
    });
  // Prompt user to tell us whether el1 > el2; pass true back to the
  // callback if true; else false.
}

// askIfGreaterThan(2, 9, innerBubbleSortLoop);

// Once you're done testing askIfGreaterThan with dummy arguments, write this.
function innerBubbleSortLoop(arr, i, madeAnySwaps, outerBubbleSortLoop) {
    
    if (i == arr.length - 1) {
        outerBubbleSortLoop(madeAnySwaps);
    } else {
        askIfGreaterThan(arr[i], arr[i + 1], function (swapNum) {
        if (swapNum) {
            let first = arr[i];
            let second = arr[i+1];
            arr[i+ 1] = first;
            arr[i] = second;

            madeAnySwaps = true;
        }
        innerBubbleSortLoop(arr, i + 1, madeAnySwaps, dummyPrint);
        });   
    }

  // Do an "async loop":
  // 1. If (i == arr.length - 1), call outerBubbleSortLoop, letting it
  //    know whether any swap was made.
  // 2. Else, use `askIfGreaterThan` to compare `arr[i]` and `arr[i +
  //    1]`. Swap if necessary. Call `innerBubbleSortLoop` again to
  //    continue the inner loop. You'll want to increment i for the
  //    next call, and possibly switch madeAnySwaps if you did swap.
}
innerBubbleSortLoop([1,3,9,7], 0, false, dummyPrint);
function dummyPrint() {
     console.log("in outerBubblesort")};
// Once you're done testing innerBubbleSortLoop, write outerBubbleSortLoop.
// Once you're done testing outerBubbleSortLoop, write absurdBubbleSort.

function absurdBubbleSort(arr, sortCompletionCallback) {
  function outerBubbleSortLoop(madeAnySwaps) {
    // Begin an inner loop if you made any swaps. Otherwise, call
    // `sortCompletionCallback`.
  }

  // Kick the first outer loop off, starting `madeAnySwaps` as true.
}

absurdBubbleSort([3, 2, 1], function(arr) {
  console.log("Sorted array: " + JSON.stringify(arr));
  reader.close();
});