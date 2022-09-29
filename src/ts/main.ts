const Singleton = <T>(element: T) => [element];

const Null = <T>(elements: T[]) => elements.length === 0;

const Snoc = <T1, T2>(elements: T1[], element: T2) => [...elements, element];

const Length = <T>(elements: T[]) => elements.length;

console.log(Singleton(1));
console.log(Null([]));
console.log(Null([1]));
console.log(Snoc([], 1));
console.log(Length([1]));
