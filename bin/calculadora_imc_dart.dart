import 'dart:io';
import 'dart:math';

void main() {
  String name;
  int age = 0;
  double weight = 0.0;
  double height = 0.0;

  try {
    //pede nome e grava em name
    stdout.write('Digite seu nome: ');
    name = stdin.readLineSync()!;

    // se nome vazio retorna exception
    if (name.isEmpty) {
      throw Exception('O nome não pode estar vazio.');
    }

    // pede idade e grava em age
    stdout.write('Digite sua idade: ');
    age = int.parse(stdin.readLineSync()!);

    // se age menor que 0 retorna exception
    if (age <= 0) {
      throw Exception('A idade deve ser maior que zero.');
    }

    // pede peso e salva em weight
    stdout.write('Digite seu peso: ');
    weight = double.parse(stdin.readLineSync()!);

    // se peso menor que 0 retorna exception
    if (weight <= 0) {
      throw Exception('O peso deve ser maior que zero.');
    }

    // pede altura e grava em height
    stdout.write('Digite sua altura: ');
    height = double.parse(stdin.readLineSync()!);

    // se a altura é maior que zero retorna exception
    if (height <= 0) {
      throw Exception('A altura deve ser maior que zero.');
    }

    // Calcular o IMC
    double imc = calculateIMC(weight, height);

    String categoriaIMC = determineBMICategory(imc);

    // Imprimir os dados inseridos pelo usuário e o resultado do IMC
    print('\nDados informados:');
    print('Nome: $name');
    print('Idade: $age anos');
    print('Peso: $weight kg');
    print('Altura: $height metros');
    print('IMC: $imc');
    print('Categoria de IMC: $categoriaIMC');
  } catch (e) {
    print('\nErro: $e');
  }
}

double calculateIMC(double weight, double height) {
  var result = weight / pow(height, 2);
  result = result * 100;
  return result.roundToDouble() / 100;
}

String determineBMICategory(double imc) {
  if (imc < 18.5) {
    return 'Abaixo do peso';
  } else if (imc < 24.9) {
    return 'Peso normal';
  } else if (imc < 29.9) {
    return 'Sobrepeso';
  } else if (imc < 34.9) {
    return 'Obesidade grau 1';
  } else if (imc < 39.9) {
    return 'Obesidade grau 2';
  } else {
    return 'Obesidade grau 3';
  }
}
