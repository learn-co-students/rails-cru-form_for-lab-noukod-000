# Modern Javascript from the beginning

## JS Fundamentals

### Variables in javascript

- var
- let
- const

`const _name = "disla"` private variable situation

### Data Types

1. primititve types

- string
- number
- boolean
- null
- undefined
- symbols

2. references types

- arrays
- object literals
- functions
- dates
- other objects

They, all, have built-in constructor.

### MATH

use the MATH modules.

### Breakpoint

```javascript
console.log("variables");

let name = "Alexandro Disla";

const age = 28;

name = "Sandro";

const object = {
  name: "hello world",
  put: 35
};

object.name = "decision";
object["put"] = 100;

console.log(object);

console.log(Math.PI);

let char = `${name} is ${age}. He just lost 84 pounds.`;

console.log(char.charAt(char.length - 1));
console.log(char.slice(-8));
console.log(char.split(""));
console.log(char.split(" "));
console.log(char.split(".")); // can do  more
```

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>JavaScript Sandbox: Section 2</title>
  </head>
  <body>
    <h1>JavaScript Sandbox: Section 2</h1>

    <script src="app.js"></script>
  </body>
</html>
```

### template litterals

```jsx
const name = "Alexandro";
const skills1 = "Software Engineer";
const skills2 = "Analytics";

let templates = `
    <ul>
        <li> Name: ${name} </li>
        <li> skillset: ${skills1} </li>
        <li> skillset: ${skills2} </li>
    </ul>
`;

document.body.innerHTML = templates;
```

### ARRAYS

```js
const arr = new Array(1, 2, 3, 4, 5, 6);
const arrow = [
  {
    a: [1, 2, 3, 4, 5]
  },
  24,
  "array"
];

// insert
arrow[3] = 1000;

// insert at the end with array method
arrow.push(12, 32, "push");
// insert at the beginning
arrow.unshift("unshift");
// remove at the end
arrow.pop();
// remove at the beg
arrow.shift();
// tronker
console.log(arrow.slice(3, 6));
// reverse
arrow.reverse();
// sorting in desc order
console.log(arrow.sort((a, b) => a - b));
// sorting asc
console.log(arrow.sort((a, b) => b - a));
// find
console.log(arrow.find(a => a < 1000));

console.log(arrow);
console.log(arrow.length);
console.log(arrow[0]);
```

### Object literals

```javascript
const container = {
  1: 3.1454556566,
  pi: "transcendental number",
  person: {
    name: "Alexandro Disla",
    age: 28,
    work_skils: ["software engoneer", "data scientist"]
  },
  birth: function() {
    return 2019 - this.person.age;
  }
};

let val;

// val = container[1];
// val = container.pi;

val = container.birth();

console.log(val);

const people = [
  {
    name: "Andrew Aldermann",
    status: "billionnaires",
    company: "AndrewTech"
  },
  {
    name: "Jerry Disla",
    status: "billionnaires",
    company: "Kansas City Chiefs"
  },
  {
    name: "Pamela Anderson",
    status: "billionnaires",
    company: "Pams glitch"
  },
  {
    name: "Tyronn Smith",
    status: "billionnaires",
    company: "Left tackles academy"
  }
];

for (let i = 0; i < people.length; i++) {
  const peeps = people[i];
  console.log(peeps.name, peeps.company);
}
```

### Dates and Times

`new Date()`: instance has multiples methods and properties

### conditional statements

> IF, Else If, Else

```javasctipt
if(condition){
  action;
} else if(condition B) {
  action B;
} else {
  action C
}

```

strict operator: `===`

> ternary operator `condition ? action A : action B`

#### Switch

```javascript
switch(conditon){
  case `option`:
    action;
    break;
  default:
    action B;
    break;
}
```

### functions

WAYS:

```js
// function declaration
function greed(name = "Alexandro Disla") {
  return `welcome ${name}`;
}

console.log(greed());
// function expression / work on arrow and normal function.
naruto = (x = 2, y = 3) => {
  return x * y;
};

console.log(naruto());

// Imm Inv Fun Ex // arrow function and normal function
((name = "Disla") => {
  console.log(`Hello ${name}`);
})();
```

### Loop and iteration

Basics

```js
for (let i = 0; i < 10; i++) {
  console.log(i);
}
```

More

```js
for (let i = 0; i < 10; i++) {
  if (i === 5) {
    console.log(`number ${i}`);
    continue;
  }
  console.log(i);
}

for (let i = 0; i < 10; i++) {
  if (i === 5) {
    console.log(`number ${i}`);
    break;
  }
  console.log(i);
}

// while

let j = 0;

while (j < 5) {
  console.log(`while is ${j}`);
  j++;
}

// do while

let k = 3;

do {
  console.log(`do while ${k}`);
  k++;
} while (k < 9);

// loop in array

const cars = ["chevy", "martin", "ford"];

for (let c = 0; c < cars.length; c++) {
  console.log(cars[c]);
}

const society = ["roman", "jews", "russian"];
const apple = ["Steve", "Wozniak"];
//// forEach
society.forEach(s => {
  console.log(s);
});

apple.forEach((apple, index, array) => {
  console.log(`index ${index}: element ${apple}`);
  console.log(array);
});

//// map
const albinos = [
  {
    id: 1,
    name: "Queen"
  },
  {
    id: 2,
    name: "Queen"
  }
];

const ids = albinos.map(albinos => {
  return albinos.id;
});
// map the ids to a array
console.log(ids);

// loop inside object
const user = {
  name: "Obama",
  age: 45
};

for (let y in user) {
  console.log(`${y}: ${user[y]}`);
}
```

### Window object / Scope of let and const

A basic introduction to all the possibe DOM action.

- `window.location.herf = 'https://google.com';`

SCOPE:

var is vulnerable
