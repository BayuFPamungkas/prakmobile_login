import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bay Aplikasi"),
      ),
      body: Container(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Logo(),


            const Padding(padding: EdgeInsets.only(top: 20.0)),
            const TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                hintText: "Username",
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 20.0)),
            const TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.security),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                hintText: "Password",
              ),
              obscureText: true,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 40.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                  child: const Text("Login"),
                  textColor: Colors.white,
                  color: Colors.red,
                  onPressed: () {},
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            TextButton(onPressed: () {},
                child: const Text("Lupa Password?"))
          ],
        ),
      ),
    );
  }
}

class Logo extends StatelessWidget {
  const Logo ({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = const AssetImage('asset/image/f1logo.png');

    Image image = Image(image: assetImage, height: 100, width: 100);
    return Container(
      child: image,
    );
  }
}