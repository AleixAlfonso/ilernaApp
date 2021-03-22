import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ilerna_app/data/autenticationService.dart';
import 'package:ilerna_app/pages/login_page.dart';
import 'package:ilerna_app/pages/welcome_page.dart';
import 'package:provider/provider.dart';

import 'pages/home_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> firebase = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthenticationService>(
          create: (context) => AuthenticationService(FirebaseAuth.instance),
        ),
        // ignore: missing_required_param
        StreamProvider(
          create: (context) =>
              context.read<AuthenticationService>().authStateChanges,
        )
      ],
      child: MaterialApp(
        initialRoute: 'wellcomePage',
        routes: <String, WidgetBuilder>{
          'wellcomePage': (BuildContext context) => WellcomePage(),
          'homePage': (BuildContext context) => HomePage(),
          'loginPage': (BuildContext context) => LoginPAge(),
        },
        debugShowCheckedModeBanner: false,
        title: 'IlernaApp',
        home: AuthenticationWrapper(),
      ),
    );
  }
}

class AuthenticationWrapper extends StatelessWidget {
  const AuthenticationWrapper({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User>();
    if (firebaseUser != null) {
      return HomePage();
    }
    return Text('Not Signed In ');
  }
}
