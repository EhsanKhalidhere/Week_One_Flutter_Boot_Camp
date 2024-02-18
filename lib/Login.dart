import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(

          title: Text("LogInPage"),
        ),
        body: SingleChildScrollView(
            child:

            //LogIn Screeen code
            Padding(
              padding: EdgeInsets.all(5),
              child: Column(
                children: [
                  Center(
                    child: Padding(padding: EdgeInsets.only(top: 100),

                      child: Text("Flutter",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                          color: Colors.blueAccent
                      ),),),
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Email",
                        border: OutlineInputBorder()

                    ),
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Password",
                        border: OutlineInputBorder()

                    ),
                  ),
                  SizedBox(height: 20,),
                  Text("Forget Password..?",style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 10,),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    height: 50,
                    width: 200,
                    child: Center(child: Text("Login",style: TextStyle(
                        color: Colors.white
                    ),)),
                  ),
                  Padding(padding: EdgeInsets.only(top: 200),child: Text("New User Create acount..."),)


                ],
              ),
            ))

    );
  }
}
