import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        elevation: 0.0,
        leading: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.teal),
              shape: BoxShape.circle,
            ),
            child:Icon(
              FontAwesomeIcons.list,
              size: 20,
            )
        ),
        actions: [
          Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.teal),
                shape: BoxShape.circle,
              ),

              child: Icon(FontAwesomeIcons.bell,
                size: 35,)),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10,top: 20),
            child: Row(
              children: [
                Text(
                  'Where do ',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Text(
                  'you want to travel ? ',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.white),
                shape: BoxShape.rectangle,
                borderRadius:BorderRadius.circular(10.0),

              ),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Search',
                  labelStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  suffixIcon: Icon(Icons.mic,
                    color: Colors.grey,),

                ),
                onFieldSubmitted: (value)
                {
                  print(value);
                },
              ),
            ),
          ),

        ],
      ),

    );
  }
}
