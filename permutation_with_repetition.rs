use std::collections::HashMap;

fn factorial(n: u64) -> u64 {
    if n <= 1 {
        1
    } else {
        n * factorial(n - 1)
    }
}

fn permutation_with_repetition(elements: &str) -> u64 {
    let mut element_counts: HashMap<char, u64> = HashMap::new();
    for c in elements.chars() {
        *element_counts.entry(c).or_insert(0) += 1;
    }

    let mut denominator: u64 = 1;
    for count in element_counts.values() {
        denominator *= factorial(*count);
    }

    factorial(elements.len() as u64) / denominator
}

fn main() {
    let elements = "AAB";
    let num_permutations = permutation_with_repetition(elements);
    println!("Number of permutations with repetition for'{}': {}", elements, num_permutations);
}
