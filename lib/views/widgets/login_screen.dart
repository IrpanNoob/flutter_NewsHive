import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newshive/routes/route_names.dart';
import 'package:newshive/views/utils/helper.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: cWhite, // ganti sesuai tema kamu
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              spacing: 40,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello',
                      style: headline1.copyWith(color: cBlack, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Again!',
                      style: headline1.copyWith(color: cTextBlue, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Welcome back, you\'ve been missed!',
                      style: subtitle1.copyWith(color: cTextBlue),
                    ),
                  ],
                ),
                // FORM INPUT
                Column(
                  spacing: 15,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'email',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: TextButton(
                          onPressed: (){
                            //TODO: Handle forgot password
                          },
                          child: Text("Forgot Password?", style: TextStyle(color: cRed,fontStyle: FontStyle.italic),)
                      )
                    )
                  ],
                ),
                Spacer(),
                // LOGIN BUTTON
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      // TODO: Handle login
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      backgroundColor: cBlue
                    ),
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: 18,color: cWhite),
                    ),
                  ),
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?", style: TextStyle(color: cBlack)),
                      TextButton(
                          onPressed: (){
                            Navigator.pushReplacementNamed(context, RouteNames.register);
                          },
                          child: Text("Sign Up"))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
}
