import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ilerna_app/data/autenticationService.dart';
import 'package:ilerna_app/data/colors.dart' as colors;
import 'package:provider/provider.dart';

class LoginPAge extends StatelessWidget {
  @override
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'Login',
          textAlign: TextAlign.center,
        ),
      ),
      body: Stack(children: [
        Center(
          child: Container(
            color: colors.main,
            height: double.infinity,
            width: double.infinity,
          ),
        ),
        Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.white,
            ),
            width: screenSize.width * 0.90,
            height: screenSize.height * 0.90,
            margin: EdgeInsets.symmetric(
                horizontal: screenSize.width * 0.10,
                vertical: screenSize.height * 0.10),
            child: Padding(
              padding: EdgeInsets.all(30.0),
              child: Column(
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/PastedGraphic-3.png'),
                    alignment: Alignment.center,
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  createTextField('Correo Electronico'),
                  SizedBox(
                    height: 30.0,
                  ),
                  createPassword(),
                  SizedBox(
                    height: 60.0,
                  ),
                  Provider(
                    create: (BuildContext context) {
                      context.read<AuthenticationService>().authStateChanges;
                    },
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(colors.main)),
                        onPressed: () {
                          context.read<AuthenticationService>().signIn(
                              email: emailController.text.trim(),
                              password: passController.text.trim());
                        },
                        child: Text(
                          'Entrar',
                          style: TextStyle(fontSize: 24.0),
                        )),
                  )
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }

  Widget createTextField(String label) {
    return TextField(
      controller: emailController,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: '$label',
      ),
    );
  }

  Widget createPassword() {
    return TextField(
      controller: passController,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Contraseña',
      ),
    );
  }
}
