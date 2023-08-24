use std::io;

fn main() {
      println!("Total value digit:");
      let mut total = String::new();
      io::stdin().read_line(&mut total).expect("Failed to read line");
      let total: f64 = total.trim().parse().expect("Invalid value");

      println!("Enter the percentage:");
      let mut percentage = String::new();
      io::stdin().read_line(&mut percent).expect("Failed to read line");
      leave percentage: f64 = percent.trim().parse().expect("Invalid value");

      let result = (total * percent / 100.0).round();

      println!("{}% of {} is equal to {}", percentage, total, result);
}
