import 'package:flutter/material.dart';
import 'package:internship/hari/homepage.dart';
import 'package:internship/hari/loginpage.dart';
class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}
enum gender{
  male,female
}
class _RegisterPageState extends State<RegisterPage> {
  bool showpassword = true;
  bool showconfirmpassword= true;
  bool checkvalue=true;
  var gendervalue=gender.male;

  void togglepassword()
  {
    setState(() {
      showpassword=!showpassword;
      
    });
  }
  void toggleconfirmpassword()
  {
    setState(() {
      showconfirmpassword=!showconfirmpassword;
    });
  }
  var fnameController=TextEditingController();
  var lnameController=TextEditingController();
  var emailController=TextEditingController();
  var passwordController=TextEditingController();
  var confpassController=TextEditingController();
  
  var fname='',lname='',email='',password='',confpass='';


  @override
  Widget build(BuildContext context) {
    return Scaffold(


    
      body:ListView(
        children:[ Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
            child: Text("HEY THERE!",style: TextStyle(fontSize: 15),),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Text("Create an Account",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Padding(
                padding:const EdgeInsets.all(10.0),
              child: TextField(
                controller: fnameController,
                decoration: InputDecoration(
                    border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    contentPadding:EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                    label: Text(
                        "First Name",style: TextStyle(fontSize:15),

                    )

                ),
              ),
              ),
            Padding(
              padding:const EdgeInsets.all(10.0),
              child: TextField(
                controller: lnameController,
                decoration: InputDecoration(
                    border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    contentPadding:EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                    label: Text(
                        "Last Name"
                    )

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Gender"),


            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
              width: 400,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(value: gender.male, groupValue: gendervalue, onChanged: (value) {
                      setState(() {
                        gendervalue=gender.male;
                      });

                    },),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Male"),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Radio(value: gender.female, groupValue: gendervalue, onChanged: (value) {
                      setState(() {
                        gendervalue=gender.female;
                      });

                    },),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Female"),
                  ),
                ],
              ),
            ),
            ),
            Padding(
              padding:const EdgeInsets.all(10.0),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                    border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    contentPadding:EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                    label: Text(
                        "Email"
                    )
                ),
              ),
            ),
            Padding(
              padding:const EdgeInsets.all(10.0),
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
                    border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    contentPadding:EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                    label: Text(
                        "Password"
                    )
                ),
              ),
            ),
            Padding(
              padding:const EdgeInsets.all(10.0),
              child: TextField(
                controller: confpassController,
                obscureText: showconfirmpassword,
                decoration: InputDecoration(
                  suffixIcon: InkWell(
                    onTap:  () {
                      toggleconfirmpassword();

                    },
                    child:showconfirmpassword? Icon(Icons.visibility):Icon(Icons.visibility_off),
                  ),
                    border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    contentPadding:EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                    label: Text(
                        "Confirm Password"
                    )
                ),
              ),
            ),
            Padding(
              padding:const EdgeInsets.all(13.0),
              
              child: Row(
                children: [
                  Checkbox(value: checkvalue, onChanged: (value) {
                    setState(() {
                      checkvalue=!checkvalue;
                    });
                  },),
                  SizedBox(
                    width: 260,
                      child: Text("By Creating an Account , you agree to our Conditions of Use and Privacy Notice",style: TextStyle(color: Colors.blueGrey),))]),


            ),


            SizedBox(
              height: 50,
              width: 210,
              child:ElevatedButton(onPressed: () {
                setState(() {
                  fname=fnameController.text;
                  lname=lnameController.text;
                  email=emailController.text;
                  password=passwordController.text;
                  confpass=confpassController.text;

                  if(fname.isEmpty)
                    {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Filed is empty"))
                      );

                    }
                  else if(lname.isEmpty)
                    {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Please enter first name"))
                      );
                    }
                  else if(email.isEmpty)
                  {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Please enter email"))
                    );
                  }
                  else if(password.isEmpty)
                  {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Please enter password"))
                    );
                  }
                  else if(confpass.isEmpty)
                  {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Please confirm your password"))
                    );
                  }
                  else if(password!=confpass)
                    {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Password must be same"))
                      );
                    }

                  else
                    {
                      
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
                   }



                });

              }, child: Text("Register",style: TextStyle(fontSize: 30),)),
              ),
            Padding(
              padding:const EdgeInsets.all(10.0),
              child: Text("Login+",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding:const EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text("Already have an account? ",style: TextStyle(fontSize: 18),),
                  TextButton(onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
                  }, child: Text("Login")
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
