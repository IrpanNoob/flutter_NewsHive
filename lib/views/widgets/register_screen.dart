import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:newshive/views/utils/helper.dart';

import '../../routes/route_names.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: cWhite, // ganti sesuai tema kamu
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              spacing: 15,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello',
                  style: headline1.copyWith(color: cBlack, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Let\'s Started!',
                  style: subtitle1.copyWith(color: cTextBlue),
                ),
                Spacer(),
                Column(
                  spacing: 20,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Name',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Phone Number',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Email',
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
                  ],
                ),
                Spacer(),
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
                    child: const Text(
                      'Register',
                      style: TextStyle(fontSize: 18,color: cWhite),
                    ),
                  ),
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Have an account?", style: TextStyle(color: cBlack)),
                      TextButton(
                          onPressed: (){
                            Navigator.pushReplacementNamed(context, RouteNames.login);
                          },
                          child: Text("Login"))
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
