import 'package:test/test.dart';

import '../bin/calculadora_imc_dart.dart';

void main() {
  test('Cálculo de IMC', () {
    // Teste para verificar se a função calcularIMC produz o resultado esperado.
    expect(calculateIMC(64.0, 1.63), equals(24.09));
  });

  test('Determinação da categoria de IMC', () {
    // Teste para verificar se a função retorna a categoria correta
    expect(determineBMICategory(35.9), equals('Obesidade grau 2'));
  });
}
