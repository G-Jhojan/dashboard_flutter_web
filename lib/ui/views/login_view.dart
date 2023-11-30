import 'package:dashboard_flutter_web/routers/router.dart';
import 'package:dashboard_flutter_web/ui/widgets/link_text.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_outline_button.dart';
import '../widgets/inputs/custom_inputs.dart';

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
                  decoration:  CustomInputs.loginInputDecoration(
                    hint: 'Ingrese su correo',
                    label: 'Correo',
                    icon: Icons.email_outlined
                  ),
                ),
                const SizedBox(height: 20,),
                TextFormField(
                  obscureText: true,
                  style: const TextStyle(color: Colors.white),
                  decoration:  CustomInputs.loginInputDecoration(
                    hint: '*****',
                    label: 'Ingrese su contraseña',
                    icon: Icons.lock_outline
                  ),
                ),

                const SizedBox(height: 20,),
                CustomOutlinedButton(
                  onPressed: (){},
                  text: 'Ingresar',
                  //isFilled: true,
                  //color: Colors.white,
                ),
                const SizedBox(height: 20,),

                LinkText(text: 'Crear una nueva cuenta', onPressed: (){
                  Navigator.pushNamed(context, Flurorouter.registerRoute);
                }),
              ],
            )
          ),
        ),
      )
    );
  }


}
