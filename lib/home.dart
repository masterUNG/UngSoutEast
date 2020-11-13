import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ungsouthease/register.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: Alignment(0, -0.5),
            radius: 1.0,
            colors: [Colors.white, Colors.lime],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              buildLogo(),
              buildText(),
              buildTextFieldUser(),
              buildTextFieldPassword(),
              buildLogin(),
              buildTextButton()
            ],
          ),
        ),
      ),
    );
  }

  TextButton buildTextButton() {
    return TextButton(
      onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Register(),
          )),
      child: Text('New Register'),
    );
  }

  Container buildLogin() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      width: 250,
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: Icon(Icons.cloud_upload),
        label: Text('Login'),
      ),
    );
  }

  Container buildTextFieldUser() => Container(
        margin: EdgeInsets.only(top: 20),
        width: 250,
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.contact_mail),
            labelText: 'User',
            border: OutlineInputBorder(),
          ),
        ),
      );

  Container buildTextFieldPassword() => Container(
        margin: EdgeInsets.only(top: 20),
        width: 250,
        child: TextField(
          obscureText: true,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.lock),
            labelText: 'Password',
            border: OutlineInputBorder(),
          ),
        ),
      );

  Text buildText() => Text(
        'Ung SountEast',
        style: GoogleFonts.lobster(
            textStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w500,
          color: Colors.purple[700],
          fontStyle: FontStyle.italic,
        )),
      );

  Container buildLogo() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      width: 120,
      child: Image.asset('images/logo.png'),
    );
  }
}
