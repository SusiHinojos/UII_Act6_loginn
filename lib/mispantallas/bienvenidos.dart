import 'package:flutter/material.dart';

class BienvenidosPantalla extends StatelessWidget {
  const BienvenidosPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              // 1. Título
              const Text("Bienvenidos", 
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.purple)),
              
              // 2. Subtítulo
              const Text("Login desarrollado en flutter", 
                style: TextStyle(fontSize: 16, color: Colors.grey)),
              const SizedBox(height: 30),

              // 3. Imagen desde red
              Image.network(
                'https://raw.githubusercontent.com/SusiHinojos/imagenes_paraflutter_6J_Febrero_2026/refs/heads/main/atraccion.jpeg',
                height: 250,
              ),
              const SizedBox(height: 40),

              // 4. Botón Login
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/login'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    padding: const EdgeInsets.symmetric(vertical: 15),
                  ),
                  child: const Text("Login"),
                ),
              ),
              const SizedBox(height: 20),

              // 5. Botón Sign Up redondeado
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () => Navigator.pushNamed(context, '/signup'),
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.purple),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    padding: const EdgeInsets.symmetric(vertical: 15),
                  ),
                  child: const Text("Sign up", style: TextStyle(color: Colors.purple)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}