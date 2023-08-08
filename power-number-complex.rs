#[derive(Debug, Clone, Copy)]
struct Complex {
    real: f64,
    imag: f64,
}

impl Complex {
    fn new(real: f64, imag: f64) -> Self {
        Complex { real, imag }
    }

    fn magnitude(&self) -> f64 {
        (self.real * self.real + self.imag * self.imag).sqrt()
    }

    fn power(&self, exponent: f64) -> Complex {
        let mag = self.magnitude();
        let angle = self.imag.atan2(self.real);

        let new_mag = mag.powf(exponent);
        let new_angle = angle * exponent;

        Complex::new(new_mag * new_angle.cos(), new_mag * new_angle.sin())
    }
}

fn main() {
    let c = Complex::new(3.0, 4.0); // 3 + 4i
    let exponent = 2.0;

    let result = c.power(exponent);

    println!("Complex number raised to the power {}: {:?} + {:?}i", exponent, result.real, result.imag);
}
