import 'dart:io';
import 'dart:math';

void main() {
  Circulo circ = Circulo();
  circ.radio = 20;
  var result_area = circ.area();
  var result_perimet = circ.perimetro();

  print(
    "El Area es: ${result_area} y El Perimetro es: ${result_perimet} El Nuevo Radio es: ${circ.add10()}",
  );
  int prev = 0, next = 1, sum;
  for (int i = 0; i < 10; i++) {
    print(prev);
    sum = prev + next;
    prev = next;
    next = sum;
  }

  try {
    print("Numero a dividir:");
    double n = double.parse(stdin.readLineSync()!);
    print("Divisor:");
    double divisor = double.parse(stdin.readLineSync()!);
    if (divisor == 0) {
      throw ArgumentError("No permitido dividir por cero!");
    }

    print("Resultado: ${n / divisor}");
  } on ArgumentError catch (e) {
    print(e.message);
  } catch (e) {
    print("Error Desconocido");
  }
}

abstract class ExtraCalculations {
  double add10();
}

abstract class Figura {
  double area();
  double perimetro();
}

class Circulo implements Figura, ExtraCalculations {
  double? radio;

  @override
  double area() => pi * radio!;

  @override
  double perimetro() => 2 * pi * radio!;

  @override
  double add10() {
    return radio! + 10;
  }
}
