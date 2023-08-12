import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class openingScreen extends StatefulWidget {
  const openingScreen({super.key});

  @override
  State<openingScreen> createState() => _openingScreenState();
}

class _openingScreenState extends State<openingScreen> {
  bool checkboxvalue = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor:  Colors.green,
        body: Container(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              Image.asset(
                "images/art.png",
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.height * 0.5,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50.0),
                          topRight: Radius.circular(50.0)),
                      color: Color.fromARGB(255, 255, 255, 255)),
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: MediaQuery.of(context).size.height * 0.5,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(30),
                  child: Column(children: [
                    const Text('Login',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,)),
                    const TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person_2_rounded),
                          hintText: "Enter Username Here",
                          labelText: "Username"),
                    ),
                    const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          hintText: "Enter Password Here",
                          labelText: "Password",
                          suffixIcon: Icon(Icons.remove_red_eye_outlined)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          'New to Quizz app?',
                        ),
                        TextButton(
                            onPressed: () {}, child: const Text('  Register')),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('login'),
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(130, 30),
                          backgroundColor:
                            Colors.green,
                          shape: const StadiumBorder()),
                    ),
                    const SizedBox(
                      width: 20,
                      height: 10,
                    ),
                    const Icon(
                      Icons.fingerprint,
                      size: 50,
                      color: Colors.blue,
                    ),
                    const Text(
                      'Use Touch ID',
                    ),
                    Row(
                      children: <Widget>[
                        Checkbox(
                            value: checkboxvalue,
                            activeColor: Colors.green,
                            onChanged: (bool? newValue) {
                              setState(() {
                                checkboxvalue = newValue!;
                              });
                            }),
                        Text("Remember me"),
                        Spacer(
                          flex: 6,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text('Forget password?'),
                        ),
                      ],
                    ),
                  ])),
            ],
          ),
        ),
      ),
    );
  }
}
