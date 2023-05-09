import 'package:flutter/material.dart';
import 'package:graduation_baidaa/layout/homelayout.dart';
import 'package:graduation_baidaa/shared/componants.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {

  var emailController=TextEditingController();
  var passwordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(

        backgroundColor:  Colors.grey[900],
        leading: BackButton(),
        elevation: 0.0,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            //sign up text
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Sign Up',
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
            Padding(
              padding: const EdgeInsets.all(9.0),
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

            defaultwhitebuttom(
              width: double.infinity,
              text: 'Enter your name',

            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Lastname',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),

            defaultwhitebuttom(
              width: double.infinity,
              text: 'Enter your Lastname',

            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Email',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),

            defaultwhitebuttom(
              width: double.infinity,
              text: 'Enter your Email',

            ),
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
                  controller: passwordController,

                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,

                  onFieldSubmitted: (String value)
                  {
                    print(value);
                  },
                  onChanged: (String value)
                  {
                    print(value);
                  },
                  validator: (String? value){
                    if(value!.isEmpty)
                    {
                      return 'Email address must not be empty';
                    }
                    return null;
                  },

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
            //confirm text
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Confirm Password',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            //confirm buttom
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                  shape: BoxShape.rectangle,
                  borderRadius:BorderRadius.circular(10.0),
                ),

                child: TextFormField(

                  decoration: InputDecoration(
                    hintText: 'Enter your confirm password',
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.square_outlined,
                    color: Colors.teal,),
                  Text('Policy Privacy',
                  style: TextStyle(
                    color: Colors.white
                  ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius:BorderRadius.circular(10.0),
                  color: Colors.teal,

                ),
                child: MaterialButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)
                  {
                    return home();
                  }));
                },

                child: Text('Submet',),

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
/*            defaultTextbuttom(
              width: double.infinity,
              color: Colors.teal,
              function: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context)
                    {
                      return home();
                    }));
              },
              text: 'Submit',
            ),
*/