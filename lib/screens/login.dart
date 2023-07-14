// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:reusable_components/shared/components/default_btn.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

final emailAddressController = TextEditingController();
final passwordController = TextEditingController();
String emailAddress = '';
String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome"),
      ),
      body:  Padding(padding: const EdgeInsets.all(20),
      child: Center(
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Login", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
                const SizedBox(height: 15,),
                TextFormField(autocorrect: true,
                enableSuggestions: true,
                controller: emailAddressController,
                keyboardType: TextInputType.emailAddress,
                onFieldSubmitted: (value) {
                  print(value);
                },
                decoration: const InputDecoration(
                  hintText: "Email Address",
                  labelText: "Email Address",
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                ),
                //decoration: ,          
                ),
                const SizedBox(height: 15,),
                  
                TextFormField(autocorrect: true,
                enableSuggestions: true,
                controller: passwordController,
                keyboardType: TextInputType.visiblePassword, obscureText: true,
                onFieldSubmitted: (value) {
                  print(value);
                },
                decoration: const InputDecoration(
                  hintText: "Password",
                  labelText: "Password",
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  border: OutlineInputBorder(),
                ),
                //decoration: ,          
                ),
                const SizedBox(height: 20,),
                Container( width: double.infinity, height: 45, color: Colors.blue,
                  child: MaterialButton(onPressed: () {emailAddress = emailAddressController.text; print(emailAddress);}, child: const Text("LOGIN", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15, color: Colors.black,)), )),
                const SizedBox(height: 10,),
                Column(children: [
                  defaultButton(
                    color: Colors.red,
                    function: () {print("here");},
                    txt: 'Register',
                    width: double.infinity
                  ),
                ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [const Text("Don't have an account?"), TextButton(onPressed: (){}, child: const Text("Register now!"))],
                  ),
              ],
            ),
          ),
        ),
      ),
      ),
      );
  }
}
