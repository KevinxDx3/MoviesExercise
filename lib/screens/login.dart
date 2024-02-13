import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final ThemeData? themeData;

  LoginScreen({this.themeData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: themeData!.primaryColor,
        leading: IconButton(
          icon: Icon(
            Icons.clear,
            color: themeData!.colorScheme.secondary,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Log In',
          style: themeData!.textTheme.headline5,
        ),
      ),
      body: Container(
        color: themeData!.primaryColor,
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Usuario
            TextField(
              style: themeData!.textTheme.bodyText1,
              decoration: InputDecoration(
                labelText: 'Usuario',
                labelStyle: themeData!.textTheme.bodyText1!.copyWith(color: themeData!.colorScheme.secondary),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: themeData!.colorScheme.secondary),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: themeData!.colorScheme.secondary),
                ),
              ),
            ),
            SizedBox(height: 16.0),

            // Contraseña
            TextField(
              style: themeData!.textTheme.bodyText1,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Contraseña',
                labelStyle: themeData!.textTheme.bodyText1!.copyWith(color: themeData!.colorScheme.secondary),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: themeData!.colorScheme.secondary),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: themeData!.colorScheme.secondary),
                ),
              ),
            ),
            SizedBox(height: 32.0),

            // Botón de inicio de sesión
            ElevatedButton(
              onPressed: () {
                // Aquí iría la lógica para procesar el inicio de sesión
              },
              child: Text(
                'Iniciar Sesión',
                style: themeData!.textTheme.button,
              ),
              style: ElevatedButton.styleFrom(
                primary: themeData!.colorScheme.secondary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
