import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(children: [
          SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  child: Row(
                    children: const [
                      Icon(Icons.energy_savings_leaf),
                      Text("E-Connect")
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(42),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.15,
                      ),
                      Container(
                        width: double.infinity,
                        child: Text(
                          "Login",
                          style: Theme.of(context).textTheme.titleLarge,
                          textAlign: TextAlign.start,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration:
                            InputDecoration(hintText: "Email ID", filled: true),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration:
                            InputDecoration(hintText: "Password", filled: true),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                          width: double.infinity,
                          child: Text(
                            "Forgot Password?",
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.primary),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          width: double.infinity,
                          child: FilledButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5))),
                              ),
                              onPressed: () {},
                              child: Text(
                                "Login",
                              ))),
                      SizedBox(
                        height: 25,
                      ),
                      SizedBox(
                          width: double.infinity,
                          child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                  text: "Don't have account?",
                                  style: TextStyle(color: Colors.black),
                                  children: [
                                    TextSpan(
                                        text: " sign up",
                                        style: TextStyle(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary))
                                  ]))),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                  width: MediaQuery.of(context).size.width * 0.75,
                  child: Image.asset(
                    'images/leaves_vector.png',
                    fit: BoxFit.contain,
                  )))
        ]));
  }
}
