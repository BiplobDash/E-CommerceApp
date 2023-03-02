import 'package:first_project/Pages/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Add extends StatelessWidget {
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passcontroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Signup",
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
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        hintText: 'Enter Your Name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          borderSide: BorderSide(
                            width: 2,
                            color: Colors.green,
                          ),
                        )),
                  ),
                  SizedBox(height: 10),

                  TextField(
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.date_range),
                        hintText: 'Enter Your Birthday',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          borderSide: BorderSide(
                            width: 2,
                            color: Colors.green,
                          ),
                        )),
                  ),
                  SizedBox(height: 10),

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
                      Navigator.push(context, CupertinoPageRoute(builder: (_)=> Login()));
                    },
                        child: Text('Sign Up')),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
