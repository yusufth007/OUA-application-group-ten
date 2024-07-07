import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () => Navigator.pushNamed(context, "/loginPage"),
                          icon: Icon(Icons.arrow_back_ios_new_outlined) ,
                        ),
                      ],
                    ),
                    SizedBox(height: 45,),
                    Text("Sign Up",style: TextStyle(fontFamily: "SFPRO",fontWeight: FontWeight.bold,fontSize: 48,color: Colors.black),),
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
                              hintText: "Full Name",
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
                              hintText: "Username",
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
                              hintText: "Password Again",
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
                        child: Text("Sign Up"),
                      ),
                    ),

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
