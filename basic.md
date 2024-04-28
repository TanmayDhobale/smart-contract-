# Rust Programming Language: Fundamentals and Real-Life Examples
 
## Rust is a systems programming language that focuses on safety, performance, and concurrency. It was initially developed by Mozilla Research and is designed to be a safe, concurrent, and fast language for building systems software, such as operating systems, web browsers, game engines, and more. Rust has gained significant popularity due to its unique approach to memory safety, which prevents common programming errors like null pointer dereferences and data races.


1. Variables and Data Types
In Rust, variables are immutable by default, which means their values cannot be changed once assigned. To declare a mutable variable, you use the mut keyword:

``` let x = 5; // Immutable variable  ```
 ``` let mut y = 10; // Mutable variable  ```
 ``` y = 20; // Valid assignment ``` 

## Rust has several primitive data types, including integers (i8, i16, i32, i64, u8, u16, u32, u64), floating-point numbers (f32, f64), booleans (bool), and characters (char). It also supports compound data types like arrays and tuples.

``` let age: u32 = 25; // Unsigned 32-bit integer ```
``` let weight: f32 = 68.5; // 32-bit floating-point number ```
 ``` let is_student: bool = true; // Boolean value ```
 ``` let name: char = 'A'; // Character ``` 

 ## 2. Functions and Control Flow
Functions in Rust are defined using the fn keyword, followed by the function name, parameters (if any), and a return type. The main function is the entry point of a Rust program.

``` fn add(x: i32, y: i32) -> i32 { ```
   ```  x + y ```
``` }```

``` fn main() { ```  
 ```    let sum = add(3, 5);  ```
  ```   println!("The sum is: {}", sum); // Output: The sum is: 8  ```
``` }  ```


## Rust supports common control flow constructs like if statements, loop and while loops, and pattern matching with match expressions.

```rust
let number = 7;

if number % 2 == 0 {
    println!("{} is even", number);
} else {
    println!("{} is odd", number); // Output: 7 is odd
}

let mut counter = 0;
loop {
    counter += 1;
    if counter > 5 {
        break;
    }
    println!("Counter: {}", counter);
} 




