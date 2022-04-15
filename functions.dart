import 'dart:io';

void main(List<String> args) {
  // IMC = peso / altura²
  final String name = pegarNome();
  double peso = pegarPeso();
  double altura = pegarAltura();
  double imc = calcularImc(peso: peso, altura: altura);
  print('\n\n');
  print('Nome: $name');
  if (imc > 25) {
    print('Está Gordo');
  } else if (imc < 18) {
    print('Está magro');
  } else {
    print('Seu peso está ok');
  }
}

calcularImc({required double peso, required double altura}) {
  return peso / (altura * altura);
}

String pegarNome() {
  print('Digite seu nome:');
  final String? name = stdin.readLineSync();
  if (name == null) {
    return 'Anônimo';
  } else {
    return name;
  }
}

double pegarPeso() {
  print('Digite seu peso:');
  final String? pesoString = stdin.readLineSync();
  if (pesoString == null) {
    return 0.0;
  } else {
    return double.parse(pesoString);
  }
}

double pegarAltura() {
  print('Digite sua Altura:');
  final String? alturaString = stdin.readLineSync();
  if (alturaString == null) {
    return 0.0;
  } else {
    return double.parse(alturaString);
  }
}
