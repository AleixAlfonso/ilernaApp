import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IlernaApp',
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              Container(
                child: CircleAvatar(foregroundImage: NetworkImage('https://lh3.googleusercontent.com/ogw/ADGmqu9P_gWKNfuN9zn90FR2QD7klCkd9p5EOkW_e42B=s32-c-mo',),),
                height: 100,
                width: double.infinity,
                color: Colors.blue,
              ),
              crearApartado('Home',Icons.home),
              crearApartado('Noticias',Icons.mail),
            ],
          ),

        ),
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          
          child: Container(
            child: Text('Main page'),
          ),
        ),
      ),
    );
  }

Widget  crearApartado(String text, IconData icono) {

  return ListTile(
    title: Text('$text'),
    trailing: Icon(icono),
    onTap: (){},
  );


  }
}