import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController inputUsername = TextEditingController();
  TextEditingController inputPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        backgroundColor: Color.fromARGB(0, 50, 145, 145),
      ),

      backgroundColor: Color.fromARGB(245, 182, 106, 165),

      body: Column(
        children: [
          Center(
            child: Image(
              image: AssetImage('asset/images/logoV.jpg'),
              width: 200,
              height: 200,
            ),
          ), // Image

          Padding(padding: EdgeInsets.all(16)),

          Center(
            child: Container(
              width: 300,
              child: TextFormField(
                decoration: InputDecoration(
                  fillColor: Color.fromARGB(255, 255, 177, 217),
                  hintText: 'Masukan Username',
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  ),
                ),
                controller: inputUsername,
              ),
            ),
          ),

          Padding(padding: EdgeInsets.all(16)),

          Center(
            child: Container(
              width: 300,
              child: TextFormField(
                decoration: InputDecoration(
                  fillColor: Color.fromARGB(255, 255, 177, 217),
                  hintText: 'Masukan Password',
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  ),
                ),
                controller: inputPassword,
                obscureText: true,
              ),
            ),
          ),

          Padding(padding: EdgeInsets.all(16)),

          ElevatedButton(
            child: Text("Login"),
            onPressed: () {
              print(inputUsername.text);
              print(inputPassword.text);
            },
          ),
        ],
      ),
    );
  }
}
