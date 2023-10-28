use std::io;

fn main() {
    println!("Geometric Progression Calculator");
    
    let a: f64 = get_user_input("Enter the first term (a):");
    let r: f64 = get_user_input("Enter the common ratio (r):");
    
    // General term of the GP
    let n: u32 = get_user_input("Enter the term number you want to calculate (n):");
    let general_term = calculate_general_term(a, r, n);
    println!("The {}th term is: {}", n, general_term);
    
    // Infinite sum (S_n infinite) of the GP
    let infinite_sum = calculate_infinite_sum(a, r);
    println!("The infinite sum (S_n infinite) is: {}", infinite_sum);
    
    // Product of the terms of the GP
    let k: u32 = get_user_input("Enter the number of terms you want to multiply (k):");
    let product_of_terms = calculate_product_of_terms(a, r, k);
    println!("The product of the first {} terms is: {}", k, product_of_terms);
}

fn get_user_input(prompt: &str) -> f64 {
    let mut input = String::new();
    println!("{}", prompt);
    io::stdin().read_line(&mut input).expect("Failed to read user input");
    input.trim().parse().expect("Invalid input")
}

fn calculate_general_term(a: f64, r: f64, n: u32) -> f64 {
    a * f64::powi(r, n as i32 - 1)
}

fn calculate_infinite_sum(a: f64, r: f64) -> f64 {
    if r.abs() < 1.0 {
        a / (1.0 - r)
    } else {
        panic!("The series does not converge to S_n infinite.");
    }
}

fn calculate_product_of_terms(a: f64, r: f64, k: u32) -> f64 {
    f64::powi(a, k as i32) * f64::powi(r, (k * (k - 1) / 2) as i32)
}
