import 'dart:io';
import 'dart:math';

class Challenge1 {
  void Run() {
    print("Ingrese un numero:");
    int num = int.parse(stdin.readLineSync()!);
    if (num > 0)
      print("El numero es positivo");
    else if (num < 0)
      print("El numero es negativo");
    else
      print("El numero es cero");
  }
}

class Challenge2 {
  void Run() {
    print("Ingrese el primer numero: ");
    double a = double.parse(stdin.readLineSync()!);
    print("Ingrese el segundo numero: ");
    double b = double.parse(stdin.readLineSync()!);
    print("la suma es: ${a + b}");
    print("la resta es: ${a - b}");
    print("la multiplicacion es: ${a * b}");
    if (a == 0 && b == 0)
      print("La division es indeterminada");
    else if (b != 0)
      print("la division es: ${a / b}");
    else
      print("No se puede dividir por cero");
  }
}

class Challenge3 {
  void Run() {
    print("Ingrese un numero: ");
    double num = double.parse(stdin.readLineSync()!);
    print("El cuadrado de {num} es ${num * num}");
  }
}

class Challenge4 {
  void Run() {
    print("Ingrese el radio de un circulo:");
    double radio = double.parse(stdin.readLineSync()!);
    double area = pi * radio * radio;
    print("El area del circulo es: ${area}");
  }
}

class Challenge5 {
  void Run() {
    print("Ingrese un numero del 1 al 7: ");
    int dia = int.parse(stdin.readLineSync()!);
    switch (dia) {
      case 1:
        print("Lunes");
        break;
      case 2:
        print("Martes");
        break;
      case 3:
        print("Miercoles");
        break;
      case 4:
        print("Jueves");
        break;
      case 5:
        print("Viernes");
        break;
      case 6:
        print("Sabado");
        break;
      case 7:
        print("Domingo");
        break;
      default:
        print("Numero no valido. Por favor, ingrese un numero del 1 al 7.");
        break;
    }
  }
}
