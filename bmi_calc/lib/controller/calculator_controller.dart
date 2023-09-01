class CalculatorController {
  var height;
  var weight;
  var bmi;

  CalculatorController({this.height, this.weight}) {
    calculateBMI();
  }

  calculateBMI() {
    if (weight <= 0 || height <= 0) {
      throw Exception("Weight and height must be positive values.");
    }

    // Calculate BMI using the formula: weight (kg) / (height (m) * height (m))
    bmi = weight / ((height / 100) * (height / 100));
  }

  String getBMIFeedback() {
    if (bmi < 18.5) {
      return "Underweight";
    } else if (bmi >= 18.5 && bmi < 25) {
      return "Normal";
    } else {
      return "Obese";
    }
  }

  String getBMIAdvice() {
    if (bmi < 18.5) {
      return "You are underweight. It's important to ensure you're getting enough nutrients and calories for your health.";
    } else if (bmi >= 18.5 && bmi < 25) {
      return "You have a normal BMI. Keep up the good work with maintaining a healthy lifestyle!";
    } else {
      return "You are in the obese range. Consider speaking to a healthcare professional about a balanced diet and exercise.";
    }
  }
}
