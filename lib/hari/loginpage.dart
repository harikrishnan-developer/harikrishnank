import 'package:flutter/material.dart';
import 'package:internship/hari/homepage.dart';
import 'package:internship/hari/registerpage.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool showpassword= true;
  @override

  void togglepassword() {
    setState(()
    {
      showpassword = !showpassword;
    });
  }
  var emailController=TextEditingController();
  var passwordController=TextEditingController();

  var email='',password='';
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Swiggy"),
        centerTitle: true,
      ),
      body: ListView(
        children:[ Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  border:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  label: Text(
                    "Email"
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: passwordController,
                obscureText: showpassword,
                decoration: InputDecoration(
                    suffixIcon: InkWell(
                  onTap: () {
                    togglepassword();

                  },
                  child:showpassword?Icon (Icons.visibility):Icon(Icons.visibility_off),
                ),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  label: Text("Password")
                ),
              ),
            ),
            SizedBox(
              width: 100,
              height: 30,
              child: ElevatedButton(onPressed:() {
                setState(() {
                  email=emailController.text;
                  password=passwordController.text;



                  if(email.isEmpty)
                    {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Please enter your email"))
                      );
                    }

                  if(password.isEmpty)
                  {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Please enter your password"))
                    );
                  }
                  else
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()),);
                    }

                }
                );
              },
                  child: Text("Login")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Dont have an account?"),


            TextButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage(),));
            },
                child: Text("Sign up")
            )
    ],
    ),
            ),
          ],

        ),
],
      ),

    );
  }
}
