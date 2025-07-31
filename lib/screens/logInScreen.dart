import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Loginscreen extends StatelessWidget {
  final List<Map<String, dynamic>> socialButtons = [
    {
      "icon": FontAwesomeIcons.facebook,
      'label': "Continue with Facebook",
      "onPressed": () {},
    },
    {
      "icon": FontAwesomeIcons.google,
      'label': "Continue with Google",
      "onPressed": () {},
    },
    {
      "icon": FontAwesomeIcons.apple,
      'label': "Continue with Apple",
      "onPressed": () {},
    },
  ];
  Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/travel.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(56.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 50),
                    Text(
                      "Hi",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color.fromARGB(171, 255, 255, 255),
                        hintText: "Email",
                        hintStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(90, 33, 149, 243),
                        minimumSize: Size(double.infinity, 50),
                      ),
                      child: Text(
                        "Continue",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 20),

                    Center(
                      child: Text("OR", style: TextStyle(color: Colors.white)),
                    ),
                    SizedBox(height: 10),

                    Column(
                      children:
                          socialButtons.map((btn) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: ElevatedButton.icon(
                                icon: FaIcon(btn['icon']),
                                label: Text(btn['label']),
                                onPressed: btn['onPressed'],
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.black,
                                  minimumSize: Size(double.infinity, 50),
                                ),
                              ),
                            );
                          }).toList(),
                    ),
                    SizedBox(height: 10),
                    Center(
                      child: GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Forgot your Password?",
                          style: TextStyle(color: Colors.greenAccent),
                        ),
                      ),
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account? ",
                          style: TextStyle(color: Colors.white),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            "Sign up",
                            style: TextStyle(color: Colors.greenAccent),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
