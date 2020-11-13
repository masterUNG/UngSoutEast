import 'package:flutter/material.dart';
import 'package:ungsouthease/normal_dialog.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String name, user, password;

  Container buildTextFieldName() => Container(
        margin: EdgeInsets.only(top: 20),
        width: 250,
        child: TextField(
          onChanged: (value) => name = value.trim(),
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.face),
            labelText: 'Display Name',
            border: OutlineInputBorder(),
          ),
        ),
      );

  Container buildTextFieldUser() => Container(
        margin: EdgeInsets.only(top: 20),
        width: 250,
        child: TextField(
          onChanged: (value) => user = value.trim(),
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
          onChanged: (value) => password = value.trim(),
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.lock),
            labelText: 'Password',
            border: OutlineInputBorder(),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('name = $name, user = $user, password = $password');
          if (name == null ||
              name.isEmpty ||
              user == null ||
              user.isEmpty ||
              password == null ||
              password.isEmpty) {
            normalDialog(context, 'มีช่องว่าง ? กรุณากรอกทุกช่องคะ');
          } else {}
        },
        child: Icon(Icons.cloud_upload),
      ),
      appBar: AppBar(
        title: Text('สมัครสมาชิก'),
      ),
      body: Center(
        child: Column(
          children: [
            buildTextFieldName(),
            buildTextFieldUser(),
            buildTextFieldPassword(),
          ],
        ),
      ),
    );
  }
}
