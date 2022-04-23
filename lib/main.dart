import 'package:flutter/material.dart';
import 'package:flutter_practiceapp_1/pages/loginpage.dart';
import 'package:flutter_practiceapp_1/pages/singuppage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
                child: Column(
              children: [
                Container(
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/image1.jpg'))),
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 180),
                      child: Text(
                        "To Million Members Club",
                        style: TextStyle(
                            color: Color.fromARGB(255, 1, 1, 161),
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                Positioned(
                  child: Container(
                    width: MediaQuery.of(context).size.width - 40,
                    height: 280,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 15,
                            spreadRadius: 5,
                          )
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SingleChildScrollView(
                        child: Column(children: [
                          Text(
                            "Login",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold,
                                fontSize: 27,
                                color: Color.fromARGB(255, 3, 0, 165)),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            child: TextFormField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        //borderSide: BorderSide(color: Color.fromARGB(255, 2, 2, 3))
                                        ),
                                    hintText: 'Enter your email',
                                    labelText: 'Email')),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      // borderSide: BorderSide(color: Color.fromARGB(255, 2, 2, 3))
                                      ),
                                  hintText: 'Enter your password',
                                  labelText: 'Password')),
                          SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Color.fromARGB(255, 1, 1, 161))),
                              //backgroundColor: MaterialStateProperty.all(Colors.red),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginPage()));
                              },
                              child: Text("Login"))
                        ]),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                RichText(
                    text: TextSpan(
                        text: 'Forgot account? ',
                        style: TextStyle(
                          color: Colors.red,
                          decoration: TextDecoration.underline,
                        ),
                        children: const [
                      TextSpan(
                        text: 'Create new account',
                      )
                    ])),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Create Account",
                      style: TextStyle(
                          fontSize: 22,
                          color: Color.fromARGB(255, 1, 1, 161),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    FloatingActionButton(
                        backgroundColor: Color.fromARGB(255, 1, 1, 161),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SingupPage()));
                        },
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ))
                  ],
                )
              ],
            ))
          ],
        ),
      ),
    );
  }

  
}
