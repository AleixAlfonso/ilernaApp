import 'package:flutter/material.dart';

class WellcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(0, 204, 204, 1),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff00CCCC),
            title: Text('Ilerna App'),
          ),
          body: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(40.0),
                child: Column(
                  children: [
                    Text(
                      'Bienvenido a la App informativa de Ilerna',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Column(children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, 'homePage');
                    },
                    child: Text(
                      'Guest',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    )),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'loginPage');
                    },
                    child: Text(
                      'Iniciar Sesion',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    )),
              ])
            ],
          ),
        ),
      ),
    );
  }
}
