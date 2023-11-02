import 'package:flutter/material.dart';

class MyAppForm extends StatefulWidget {
  const MyAppForm({super.key});

  @override
  State<MyAppForm> createState() => _MyAppFormState();
}

class _MyAppFormState extends State<MyAppForm> {
  String _nombre = '';
  String _apellido = '';
  String _username = '';
  String _password = '';
  String _email = '';
  bool _isLoggedIn = false;

  void _onNombreChanged(String valor) {
    setState(() {
      _nombre = valor;
    });
  }

  void _onApellidoChanged(String valor) {
    setState(() {
      _apellido = valor;
    });
  }

  void _onUsernameChanged(String valor) {
    setState(() {
      _username = valor;
    });
  }

  void _onPasswordChanged(String valor) {
    setState(() {
      _password = valor;
    });
  }

  void _onEmailChanged(String valor) {
    setState(() {
      _email = valor;
    });
  }

  void _submitForm() {
    // Simulamos una verificación de credenciales.
    if (_username == 'usuario' &&
        _password == 'contraseña' &&
        _email == 'correo@ejemplo.com') {
      setState(() {
        _isLoggedIn = true;
      });
    } else {
      setState(() {
        _isLoggedIn = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(219, 230, 228, 250),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 90.0),
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100.0,
                backgroundColor: Color.fromARGB(138, 140, 223, 227),
                backgroundImage: AssetImage('images/foto1.png'),
              ),
              Text(
                'LOGIN',
                style: TextStyle(fontFamily: 'cursive', fontSize: 40.0),
              ),
              Text(
                'Bienvenido',
                style: TextStyle(fontFamily: 'cursive', fontSize: 20.0),
              ),
              SizedBox(
                width: 160.0,
                height: 15.0,
              ),
              if (!_isLoggedIn) ...[
                TextField(
                  enableInteractiveSelection: false,
                  decoration: InputDecoration(
                    hintText: 'Nombre de usuario',
                    labelText: 'Nombre de usuario',
                    suffixIcon: Icon(Icons.verified_user),
                    border: OutlineInputBorder(),
                  ),
                  onChanged: _onNombreChanged,
                ),
                TextField(
                  enableInteractiveSelection: false,
                  textCapitalization: TextCapitalization.none,
                  decoration: InputDecoration(
                    hintText: 'Correo electrónico',
                    labelText: 'Correo electrónico',
                    suffixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(),
                  ),
                  onChanged: _onEmailChanged,
                ),
                TextField(
                  enableInteractiveSelection: false,
                  textCapitalization: TextCapitalization.none,
                  decoration: InputDecoration(
                    hintText: 'Contraseña',
                    labelText: 'Contraseña',
                    suffixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                  onChanged: _onPasswordChanged,
                ),
                ElevatedButton(
                  onPressed: _submitForm,
                  child: Text('Iniciar sesión'),
                ),
              ] else
                Text('¡Bienvenido, $_nombre $_apellido!'),
            ],
          ),
        ],
      ),
    );
  }
}
