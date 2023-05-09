import 'package:flutter/material.dart';
import 'package:graduation_baidaa/modules/signup.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  var emailController=TextEditingController();
  var passwordController=TextEditingController();


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            //login text
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Login',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange,
                ),
                ),


              ],
            ),
            SizedBox(
              height: 30,
            ),
            //usar name text
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Username',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            // usar name buttom
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: kToolbarHeight,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                  shape: BoxShape.rectangle,
                  borderRadius:BorderRadius.circular(10.0),
                ),

                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter your name',
                     hintStyle: TextStyle(
                       color: Colors.grey,

                     ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                  maxLines: 1,
                  style: TextStyle(
                    color: Colors.black87,
                  ),
                  cursorColor: Colors.grey,
                ),
              ),
            ),
            SizedBox(height: 30,),
            //password text
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Password',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            //password buttom
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: kToolbarHeight,

                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                  shape: BoxShape.rectangle,
                  borderRadius:BorderRadius.circular(10.0),
                ),

                child: TextFormField(
                    obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Enter your password',
                    hintStyle: TextStyle(
                      color: Colors.grey,

                    ),
                    suffixIcon: Icon( Icons.remove_red_eye_outlined,),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                  maxLines: 1,
                  style: TextStyle(
                    color: Colors.black87,
                  ),
                  cursorColor: Colors.grey,

                ),


              ),
            ),
            //forget text
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed:(){},
                    child: Text('Forget password ?',
                      style: TextStyle(
                        color: Colors.deepOrange,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 180,),
            //submit buttom
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  shape: BoxShape.rectangle,
                  borderRadius:BorderRadius.circular(10.0),

                ),
                child: MaterialButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                    return signup();
                  }),);
                },

                child:Text(
                  'Submit',
                     style: TextStyle(
                       color: Colors.white,
                     ),
                ) ,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Do not have an account ? ',
                style: TextStyle(
                  color: Colors.white,
                ),),
                TextButton(onPressed: () {},
                  child: Text(
                    'Sign up here',

                   style: TextStyle(
                      color:Colors.deepOrange,
                    ),
                  ),),

              ],
            ),

          ],
        ),
      ),
    );
  }
}
