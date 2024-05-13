import 'package:app2/page/Body_page.dart';
import 'package:app2/page/componets/bnt1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

// ignore: camel_case_types
class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: const Color.fromARGB(255, 255, 255, 255),
          child: Column(
            children: [
              Container(
                width: 100,
                height: 100,
                margin: const EdgeInsets.all(30),
                child: Image.network(
                    fit: BoxFit.cover,
                    'https://img.freepik.com/free-vector/bird-colorful-gradient-design-vector_343694-2506.jpg?size=338&ext=jpg&ga=GA1.1.1224184972.1715472000&semt=ais_user'),
              ),

              const Positioned(
                top: 10, // Ajusta la posición vertical aquí
                left: 20, // Ajusta la posición horizontal aquí
                child: Text(
                  'Usuario',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              //Elementos de menu
              MyButton(onPressed: () {}, text: 'Inicio'),
              MyButton(onPressed: () {}, text: 'Nostros'),
              MyButton(onPressed: () {}, text: 'Perfil'),
              MyButton(onPressed: () {}, text: 'Ajustes'),

              Expanded(child: Container()),
              Container(
                child: MyButton(onPressed: () {}, text: 'Iniciar Session'),
              )

              //Elementos de menu
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text('Menu tipo drawer'),
      ),
      body: const body(),
    );
  }
}
