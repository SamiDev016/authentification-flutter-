import 'package:authentification_design/components/my_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Icon(
                CupertinoIcons.lock,
                size: 100,
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                "Welcom back",
                style: TextStyle(fontSize: 18, color: Colors.grey[700]),
              ),
              const SizedBox(
                height: 25,
              ),
              MyTextField(
                hintText: "Email or Username",
                isPassword: false,
                controller: _emailController,
              ),
              const SizedBox(
                height: 15,
              ),
              MyTextField(
                hintText: "Password",
                isPassword: true,
                controller: _passwordController,
              ),

              const SizedBox(
                height: 15,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Text(
                      "Forgot password?",
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 25,
              ),

              
            ],
          ),
        ),
      ),
    );
  }
}
