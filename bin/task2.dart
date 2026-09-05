int calculate(int num1, int num2, String operation) {
  switch (operation) {
    case '+':
      return num1 + num2;
    case '-':
      return num1 - num2;
    case '*':
      return num1 * num2;
    case '/':
      return num1 ~/ num2; 
    default:
      return 0; 
  }
}

void main() {
  print(calculate(10, 5, '+'));  
  print(calculate(10, 3, '-')); 
  print(calculate(4, 5, '*'));  
  print(calculate(10, 3, '/')); 
}

