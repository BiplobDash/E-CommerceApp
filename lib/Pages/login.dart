import 'package:first_project/Pages/home.dart';
import 'package:first_project/bottom_nav_controller.dart';
import 'package:first_project/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passcontroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Login",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
          ),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.green,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  TextField(
                    controller: _emailcontroller,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email_sharp),
                        hintText: 'Email Address',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          borderSide: BorderSide(
                            width: 2,
                            color: Colors.green,
                          ),
                        )),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    controller: _passcontroller,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.remove_red_eye),
                      hintText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.green,
                        ),
                      ),
                    ),
                    obscureText: true,
                    validator: (value){
                      if(value == null || value.isEmpty){
                        print("The field cannot be empty");
                      }
                    },
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: 300,
                    child: ElevatedButton(onPressed: (){
                      Navigator.pushReplacement(context, CupertinoPageRoute(builder: (_) => BottomNavController()));
                    },
                        child: Text('Login')),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
