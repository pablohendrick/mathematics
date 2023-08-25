fn main() {
    // Solve the equation x²−5x+6=0
    let a1 = 1.0;
    let b1 = -5.0;
    let c1 = 6.0;
    let discriminant1 = b1 * b1 - 4.0 * a1 * c1;
    
    if discriminant1 > 0.0 {
        let root1 = (-b1 + discriminant1.sqrt()) / (2.0 * a1);
        let root2 = (-b1 - discriminant1.sqrt()) / (2.0 * a1);
        println!("Questão 1 - Raízes: {} e {}", root1, root2);
    } else if discriminant1 == 0.0 {
        let root = -b1 / (2.0 * a1);
        println!("Question 1 - Double root: {}", root);
    } else {
        println!("Question 1 - No real roots.");
    }

    // Find the values of x that satisfy the equation 2x²+3x−2=0 
    let a2 = 2.0;
    let b2 = 3.0;
    let c2 = -2.0;
    let discriminant2 = b2 * b2 - 4.0 * a2 * c2;

    if discriminant2 > 0.0 {
        let root1 = (-b2 + discriminant2.sqrt()) / (2.0 * a2);
        let root2 = (-b2 - discriminant2.sqrt()) / (2.0 * a2);
        println!("Question 3 - Roots: {} and {}", root1, root2);
    } else if discriminant2 == 0.0 {
        let root = -b2 / (2.0 * a2);
        println!("Question 2 - Double root: {}", root);
    } else {
        println!("Question 2 - No real roots.");
    }

    // Determine the roots of the equation 3x²−12x=0
    let a3 = 3.0;
    let b3 = -12.0;
    let c3 = 0.0;
    let discriminant3 = b3 * b3 - 4.0 * a3 * c3;

    if discriminant3 > 0.0 {
        let root1 = (-b3 + discriminant3.sqrt()) / (2.0 * a3);
        let root2 = (-b3 - discriminant3.sqrt()) / (2.0 * a3);
        println!("Question 3 - Roots: {} and {}", root1, root2);
    } else if discriminant3 == 0.0 {
        let root = -b3 / (2.0 * a3);
        println!("Question 3 - Double root: {}", root);
    } else {
        println!("Question 3 - No real roots.");
    }

    // Solve the equation x²+8x+16=0
    let a4 = 1.0;
    let b4 = 8.0;
    let c4 = 16.0;
    let discriminant4 = b4 * b4 - 4.0 * a4 * c4;

    if discriminant4 > 0.0 {
        let root1 = (-b4 + discriminant4.sqrt()) / (2.0 * a4);
        let root2 = (-b4 - discriminant4.sqrt()) / (2.0 * a4);
        println!("Question 4 - Roots: {} and {}", root1, root2);
    } else if discriminant4 == 0.0 {
        let root = -b4 / (2.0 * a4);
        println!("Question 4 - Double root: {}", root);
    } else {
        println!("Question 4 - No real roots.");
    }

    // Find the real solutions of 4x²−9=0
    let a5 = 4.0;
    let b5 = 0.0;
    let c5 = -9.0;
    let discriminant5 = b5 * b5 - 4.0 * a5 * c5;

    if discriminant5 > 0.0 {
        let root1 = (-b5 + discriminant5.sqrt()) / (2.0 * a5);
        let root2 = (-b5 - discriminant5.sqrt()) / (2.0 * a5);
        println!("Questão 5 - Raízes: {} e {}", root1, root2);
    } else if discriminant5 == 0.0 {
        let root = -b5 / (2.0 * a5);
        println!("Question 5 - Double root: {}", root);
    } else {
        println!("Question 5 - No real roots.");
    }

    // Determine the values of x that satisfy x²=25
    let a6 = 1.0;
    let b6 = 0.0;
    let c6 = -25.0;
    let discriminant6 = b6 * b6 - 4.0 * a6 * c6;

    if discriminant6 > 0.0 {
        let root1 = (-b6 + discriminant6.sqrt()) / (2.0 * a6);
        let root2 = (-b6 - discriminant6.sqrt()) / (2.0 * a6);
        println!("Questão 6 - Raízes: {} e {}", root1, root2);
    } else if discriminant6 == 0.0 {
        let root = -b6 / (2.0 * a6);
        println!("Question 6 - Double root: {}", root);
    } else {
        println!("Question 6 - No real roots.");
    }
}
