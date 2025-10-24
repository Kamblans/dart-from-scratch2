import 'dart:io';

void main() {
  print("Ingresa el Primer Numero");

  double? a = double.tryParse(stdin.readLineSync()!);
  print("Ingresa el Segundo Numero");
  double? b = double.tryParse(stdin.readLineSync()!);

  const Indeterminado = "Indeterminado";
  if (a != null && b != null) {
    print(
      "Suma: ${a + b}, Resta: ${a - b}, Multiplicacion: ${a + b}, Division: ${(b != 0 ? a / b : Indeterminado)}",
    );
  } else {
    print("Ingresa Solo Valores Numericos Validos");
  }
}
