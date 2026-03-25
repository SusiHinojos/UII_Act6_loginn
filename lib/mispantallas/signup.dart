import 'package:flutter/material.dart';

class SignupPantalla extends StatelessWidget {
  const SignupPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            const SizedBox(height: 60),
            // Título y Subtítulo
            const Text("Sign up", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.purple)),
            const Text("Crear una cuenta, es gratis", style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 30),

            // Campos de texto (Etiqueta + TextField)
            _buildField("Nombre de usuario", "Escribe tu nombre"),
            _buildField("Email", "correo@ejemplo.com"),
            _buildField("Password", "*******", isPass: true),
            _buildField("Confirmar Password", "*******", isPass: true),

            const SizedBox(height: 30),

            // Botón Sign Up
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
                child: const Text("Sign up"),
              ),
            ),
            const SizedBox(height: 20),

            // Texto "¿Ya tienes una cuenta? Login"
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("¿Ya tienes una cuenta? "),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/login'),
                  child: const Text("Login", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.purple)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Función auxiliar para no repetir código de los campos
  Widget _buildField(String label, String hint, {bool isPass = false}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
          TextField(
            obscureText: isPass,
            decoration: InputDecoration(hintText: hint),
          ),
        ],
      ),
    );
  }
}