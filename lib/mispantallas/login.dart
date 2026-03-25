import 'package:flutter/material.dart';

class LoginPantalla extends StatelessWidget {
  const LoginPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            const SizedBox(height: 60),
            // 1. Título
            const Text("Login", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.purple)),
            
            // 2. Subtítulo
            const Text("Inicia sesión con tu cuenta", style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 40),

            // 3. Email Label + TextField
            const Align(alignment: Alignment.centerLeft, child: Text("Email", style: TextStyle(fontWeight: FontWeight.bold))),
            const TextField(decoration: InputDecoration(hintText: "correo@ejemplo.com", focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.purple)))),
            const SizedBox(height: 20),

            // 4. Password Label + TextField
            const Align(alignment: Alignment.centerLeft, child: Text("Password", style: TextStyle(fontWeight: FontWeight.bold))),
            const TextField(obscureText: true, decoration: InputDecoration(hintText: "******")),
            const SizedBox(height: 40),

            // 5. Botón redondeado Iniciar Sesión
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  padding: const EdgeInsets.symmetric(vertical: 15),
                ),
                child: const Text("Iniciar sesión"),
              ),
            ),
            const SizedBox(height: 20),

            // 6. Texto "¿No tienes cuenta? Sign up"
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("¿No tienes cuenta? "),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/signup'),
                  child: const Text("Sign up", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.purple)),
                ),
              ],
            ),
            const SizedBox(height: 30),

            // 7. Imagen Barco
            Image.network(
              'https://raw.githubusercontent.com/SusiHinojos/imagenes_paraflutter_6J_Febrero_2026/refs/heads/main/barco.jpg',
              height: 180,
            ),
          ],
        ),
      ),
    );
  }
}