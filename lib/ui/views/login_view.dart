import 'package:dashboard_flutter_web/ui/widgets/link_text.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.only(top: 100),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      color: Colors.black,
      child:  Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 400),
          child:  Form(
            //key: ,
            child: Column(
              children: [
                TextFormField(
                  style: const TextStyle(color: Colors.white),
                  decoration: buildInputDecoration(
                    hint: 'Ingrese su correo',
                    label: 'Email',
                    icon: Icons.email_outlined
                  ),
                ),
                const SizedBox(height: 20,),
                TextFormField(
                  obscureText: true,
                  style: const TextStyle(color: Colors.white),
                  decoration: buildInputDecoration(
                    hint: '*****',
                    label: 'Ingrese su contraseña',
                    icon: Icons.lock_outline
                  ),
                ),

                const SizedBox(height: 20,),

                LinkText(text: 'Crear una nueva cuenta', onPressed: (){}),
              ],
            )
          ),
        ),
      )
    );
  }

  InputDecoration buildInputDecoration({
    required String hint,
    required String label,
    required IconData icon,
  }) {
    return InputDecoration(
      iconColor: Colors.white.withOpacity(0.3),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white.withOpacity(0.3))
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white60)
      ),
      hintText: hint,
      labelText: label,
      prefixIcon: Icon(icon, color: Colors.white.withOpacity(0.3)),
      hintStyle:  TextStyle(color: Colors.white.withOpacity(0.3)),
      labelStyle: const TextStyle(color: Colors.white),
    );
  }
}
