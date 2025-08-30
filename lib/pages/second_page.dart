import 'package:flutter/material.dart';

List<Map<String, dynamic>> myFoods = [
  {
    "name": "bol avena frutas mesa",
    "u":
        "https://laguiadelasvitaminas.com/wp-content/uploads/2017/06/bol-avena-frutas-mesa.jpg",
    "ing": [
      "Sólo necesitas frutas picadas a elección",
      "½ taza de avena",
      "50 gramos de nuez",
      "1 cucharadita de canela en polvo",
    ],
  },
  {
    "name": "panqueques de arandanos",
    "u":
        "https://laguiadelasvitaminas.com/wp-content/uploads/2017/07/panqueques-arandanos.jpg",
    "ing": [
      "1 taza de avena",
      "2 huevos",
      "1 taza de leche descremada",
      "1 pizca de sal."
    ]
  },
  {
    "name": "Wrap de pavo con queso provolone, palta y mayonesa",
    "u":
        "https://laguiadelasvitaminas.com/wp-content/uploads/2017/07/Wrap-de-pavo-con-queso.jpg",
    "ing": [
      "1 tortilla",
      "3 rebanadas de carne de pavo o jamón de pavo",
      "1 rebanada de queso provolone",
      "2 rodajas de tomate",
      "2 hojas de tu lechuga favorita."
    ]
  }
];

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: myFoods.length,
        itemBuilder: (context, index) {
          final food = myFoods[index]; // food es un Map<String, dynamic>

          return Card(
            child: ListTile(
              leading: Image.network(
                food["u"], // 👈 la url de la imagen
                width: 60,
                height: 60,
                fit: BoxFit.cover,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) {
                    return child; // imagen cargada
                  } else {
                    return const CircularProgressIndicator(); // muestra el spinner mientras carga
                  }
                },
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(Icons.broken_image,
                      size: 60, color: Colors.red);
                },
              ),
              title: Text(food["name"]), // 👈 el nombre
              subtitle: Text(
                (food["ing"] as List).join(", "), // 👈 ingredientes en string
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              onTap: () {
                print('Has clickeado en: ${food["name"]}');
              },
            ),
          );
        },
      ),
    );
  }
}
