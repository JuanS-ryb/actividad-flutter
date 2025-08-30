import 'package:flutter/material.dart';

List<String> myLenguages = [
  "python",
  "C#",
  "ruby",
  "C++",
  "java",
  "javascript",
  "react",
  "nodejs"
];

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int selectedItem =
      -1; // Índice del ítem seleccionado, inicializado como -1 (ninguno seleccionado)

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: ListView.builder(
        itemCount: myLenguages.length,
        itemBuilder: (context, index) {
          String item = myLenguages[index];
          bool isSelected =
              selectedItem == index; // Verifica si el ítem está seleccionado

          return Card(
            child: ListTile(
              leading: Icon(
                isSelected
                    ? Icons.check_circle
                    : Icons.radio_button_off, // Muestra el check a la izquierda
                color: isSelected
                    ? Colors.blueGrey
                    : Colors.grey, // Color del ícono
              ),
              title: Text(item),
              onTap: () {
                setState(() {
                  selectedItem = isSelected
                      ? -1
                      : index; // Si ya está seleccionado, deseleccionarlo
                });
                print('Has clickeado el ítem: $item');
              },
            ),
          );
        },
      ),
    );
  }
}
