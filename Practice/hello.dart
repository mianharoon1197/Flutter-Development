//required POSITIONAL arguments
void greet(String name, int age) {
  print("Hello $name, you are $age years old!");
}
//optional POSITIONAL arguments
void greet1(String name, [int? age]) {
  print("Hello $name, you are ${age ?? 35} years old!");
}
//named arguments
void greet2({required String name, int? age}) {
  print("Hello $name, you are $age years old!");
}

void main() {
  greet('Harry',22);

  greet1('Haroon');
  greet1('Haroon',22);

  greet2(name: 'Hadi');
  greet2(name: 'Hadi', age: 5);
}
