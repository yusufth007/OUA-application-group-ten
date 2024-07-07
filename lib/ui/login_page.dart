import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  final formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(height: 80,),
                    Text("Sign In",style: TextStyle(fontFamily: "SFPRO",fontWeight: FontWeight.bold,fontSize: 48,color: Colors.black),),
                    SizedBox(height: 60,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Colors.grey.shade500,
                          width: 1
                        ),
                        color: Color(0xFFfafafa)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Email",
                            border: InputBorder.none
                          ),
                          validator: (value){
          
                          },
                          onSaved: (value){
          
                          },
          
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              color: Colors.grey.shade500,
                              width: 1
                          ),
                          color: Color(0xFFfafafa)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Password",
                            border: InputBorder.none
                          ),
                          validator: (value){
          
                          },
                          onSaved: (value){
          
                          },
                          style: TextStyle(color: Colors.black),
                          obscureText: true,
                        ),
                      ),
                    ),
                    SizedBox(height: 60,),
                    SizedBox(
                      height: 50,
                      width: 400,
                      child: ElevatedButton(
                          onPressed: (){
          
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: Color(0xFFd6bb76),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)
                            )
                          ) ,
                          child: Text("Log In"),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: Colors.grey.shade800,
                            thickness: 1,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("or"),
                        ),
                        Expanded(
                          child: Divider(
                            color: Colors.grey.shade800,
                            thickness: 1,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account?"),
                        TextButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(context, "/signupPage");
                            },
                            child: Text("Sign Up",style: TextStyle(color: Colors.black),)
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
