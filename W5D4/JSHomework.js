function mysteryScoping1() {
  var x = 'out of block';
  if (true) {
    var x = 'in block';
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping2() {
  const x = 'out of block';
  if (true) {
    const x = 'in block';
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping3() {
  const x = 'out of block';
  if (true) {
    const x = 'in block';
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping4() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping5() {
  var x = 'out of block';
  if (true) {
    const x = 'in block';
    console.log(x);
  }
  x = 'out of block again';
  console.log(x);
}

function madLib(str1, str2, str3) {
  console.log("We shall " + str1.toUpperCase() + " the " + str2.toUpperCase() + " " + str3.toUpperCase());
}

function isSubstring(string, substring) {
  var array = string.split(" ")
  for (i = 0 ; i < array.length ; i ++) {
    if (array[i] === substring) {
      return true;
    }
  }
  return false;
}

function fizzbuzz(array) {
  var newArr = [];
  for (i = 0; i < array.length ; i++) {
    if (array[i] % 3 === 0 || array[i] % 5 === 0 ) {

    } else {
      newArr.push(array[i]);
    }
  }
  return newArr ;
}

function is_prime(number) {
  for (i = 2; i < number; i++) {
    if (number % i === 0) {
      return false ;
    }
  }
  return true ;
}

function sumOfNPrimes(number) {
  var arr = [];
  var count = 0;
  i = 1;
  while (arr.length !== number) {
    if (is_prime(i)) {
      arr.push(i);
      count += i;
      i += 1;
    }
  }
  return count;
}
