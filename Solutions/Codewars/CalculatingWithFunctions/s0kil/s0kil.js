function number(args, num) {
  if (args.length) return args[0](num)
  else return num;
}

function zero() {
  return number(arguments, 0)
}

function one() {
  return number(arguments, 1)
}

function two() {
  return number(arguments, 2)
}

function three() {
  return number(arguments, 3)
}

function four() {
  return number(arguments, 4)
}

function five() {
  return number(arguments, 5)
}

function six() {
  return number(arguments, 6)
}

function seven(func) {
 return number(arguments, 7)
}

function eight() {
  return number(arguments, 8)
}

function nine() {
  return number(arguments, 9)
}


function plus(num1) {
  return (num2) => num2 + num1;
}

function minus(num1) {
  return (num2) => num2 - num1;
}

function times(num1) {
  return (num2) => num2 * num1;
}

function dividedBy(num1) {
  return (num2) => Math.floor(num2 / num1);
}
