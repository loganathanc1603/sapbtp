let age: number = 20;

if (age < 50) {
    age += 10;
    console.log(age);
} else {
    console.log(age);
}

const message: string = "Hello World";
//message();

function greet(person: string, date: Date) {
    console.log(`Hello ${person}, today is ${date.toLocaleDateString()}!`);
}
greet("Loganathan", new Date());

