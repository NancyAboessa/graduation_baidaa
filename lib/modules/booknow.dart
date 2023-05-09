import 'package:flutter/material.dart';
import 'package:graduation_baidaa/shared/componants.dart';

class book extends StatefulWidget {
  const book({Key? key}) : super(key: key);

  @override
  State<book> createState() => _bookState();
}

class _bookState extends State<book> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
         appBar: AppBar(
           leading: BackButton(),
           backgroundColor:  Colors.grey[900],
           elevation: 0.0,
         ),
         body: SingleChildScrollView(
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               Padding(
                 padding: const EdgeInsets.all(20.0),
                 child: ClipRRect(
                     borderRadius: BorderRadius.circular(20.0),

                     child: Image.asset('assets/imeges/hotelroom.avif',)),
               ),
               Padding(
                 padding: const EdgeInsets.all(20.0),
                 child: Row(
                   children: [
                     Text(
                       'Fayoum Hotel',
                       style: TextStyle(
                         fontWeight: FontWeight.w600,
                         fontSize: 30,
                         color: Colors.white,
                       ),
                     ),

                   ],
                 ),

               ),
               Padding(
                 padding: const EdgeInsets.all(20.0),
                 child: Text(
                   'the 5 star hotel located in fayoum in the exclusive place in fayoum and you will take the best trip with us',
                   style: TextStyle(

                     fontSize: 20,
                     color: Colors.grey,
                   ),

                 ),
               ),
               SizedBox(
                 height: 50,
               ),
               Padding(
                 padding: const EdgeInsets.all(20.0),
                 child: defaultTextbuttom(function: (){},
                   text: 'Book now',
                   width: double.infinity,
                   color: Colors.teal,

                 ),
               ),

             ],
           ),
         ),
    );
  }
}
