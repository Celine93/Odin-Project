//Project Euler problem 1: Multiples of 3 and 5

var sum = 0;
for (var i = 0; i < 1000; i++) {
    if (i % 3 === 0 || i % 5 === 0) {
        sum += i;
    }
}
console.log(sum);

//Project Euler problem 2: Even Fibonacci Numbers

var x = 1;
var y = 2;
var z = 0;
var sum = 0;

while (x < 4000000) {
    if(x % 2 === 0) {
        sum += x;
    }
    z = x + y;
    x = y;
    y = z;
}
console.log(sum);

//Project Euler problem 3: Largest prime factor

No clue