import 'package:flutter/material.dart';

enum Category { Frutas, Bebidas, Carnes, Congelados, Roupas, Outro }

extension CategoryExtention on Category {
  Color get color {
    switch (this) {
      case Category.Frutas:
        return Colors.blue;

      case Category.Bebidas:
        return Colors.blue;

      case Category.Carnes:
        return Colors.blue;

      case Category.Congelados:
        return Colors.blue;

      case Category.Roupas:
        return Colors.blue;

      case Category.Outro:
        return Colors.green;
    }
  }
}
