import 'package:flutter/material.dart';
import 'package:ilerna_app/globals.dart' as globals;

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              child: CircleAvatar(),
              height: 100,
              width: double.infinity,
              color: Colors.blue,
            ),
            crearApartado('Home', Icons.home, 'homePage', context),
            crearApartado('Noticias', Icons.mail, 'newsPage', context),
            ListTile(
              title: Text('Cerrar Sesion'),
              trailing: Icon(Icons.exit_to_app),
              onTap: () {
                Navigator.pushReplacementNamed(context, 'wellcomePage');
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      body: Center(
        child: Container(
          child: Text(globals.isAdmin
              ? 'Bienvenido administrador'
              : 'Bienvenido Invitado'),
        ),
      ),
    );
  }

  Widget crearApartado(
      String text, IconData icono, String ruta, BuildContext context) {
    return ListTile(
      title: Text('$text'),
      trailing: Icon(icono),
      onTap: () {
        String rutaActual = ModalRoute.of(context).settings.name;
        if (rutaActual == 'homePage' && ruta == 'homePage') {
          Navigator.pop(context);
        } else {
          Navigator.pushNamed(context, ruta);
        }
      },
    );
  }
}
