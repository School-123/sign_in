import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Login()));
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            'Sign in',
            style: TextStyle(color: Colors.green),
          )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                labelText: 'email',
              ),
            ),
          ),
          SizedBox(
            height: 10,
            width: 18,
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                hintText: 'password',
              ),
            ),
          ),
          SizedBox(
            height: 10,
            width: 18,
          ),
          ElevatedButton(onPressed: () {},style: ElevatedButton.styleFrom(primary: Colors.red), child: Text('Login')),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Text('OR'),
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(primary: Colors.blue),
              child: Text('Facebook Login')),
        ],
      ),
    );
  }
}
