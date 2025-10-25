import 'dart:io';

import 'challenges/index.dart';
import 'menu/index.dart';

void main() {
  print("Ingresa Tu Nombre");
  String? nombre = stdin.readLineSync();
  print("!Hola, $nombre ! Por Favor, Escoja Una Opcion Del Menu");

  var menu = new Menu();
  menu.MostrarMenu();

  while (true) {
    String? entrada = stdin.readLineSync()?.toLowerCase();
    if (entrada == "q" || entrada == "exit") {
      break;
    }

    int? eleccion = int.tryParse(entrada!);
    if (eleccion != null && eleccion >= 1 && eleccion <= 4) {
      switch (eleccion) {
        case 1:
          var challenge1 = Challenge1();
          challenge1.Run();
          break;
        case 2:
          var challenge2 = Challenge2();
          challenge2.Run();
          break;
        case 3:
          var challenge3 = Challenge3();
          challenge3.Run();
          break;
        case 4:
          var challenge4 = Challenge4();
          challenge4.Run();
          break;
        case 5:
          var challenge5 = Challenge5();
          challenge5.Run();
          break;
        default:
          print("Preione una telca para continuar....");
          stdin.readLineSync();
          menu.MostrarMenu();
          break;
      }
    } else {
      print(
        "Opcion no valida. Por favor, ingrese un numero entre el 1 y 4, o 'q' o 'exit' para salir ",
      );
    }
  }
}
