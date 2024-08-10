import 'package:authentification_design/components/my_button.dart';
import 'package:authentification_design/components/my_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
                "Hello There",
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
              MyButton(
                text: "Sign in",
                onTap: signUserIn,
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[500],
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Or continue with",
                    style: TextStyle(color: Colors.grey[500]),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[500],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 15,),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(8)
                    ),
                    padding: const EdgeInsets.all(5),
                    child: const Column(
                      children: [
                        Icon(
                          Icons.circle_notifications,
                          size: 50,
                        ),
                        Text("Google")
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(8)
                    ),
                    padding: const EdgeInsets.all(5),
                    child: const Column(
                      children: [
                        Icon(
                          Icons.add_circle_outline,
                          size: 50,
                        ),
                        Text("Facebook")
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Not a member?",
                    style: TextStyle(
                      color: Colors.grey[700]
                    ),
                  ),
                  const SizedBox(width: 4,),
                  const Text(
                    "Register Now",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
