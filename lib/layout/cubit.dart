import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_baidaa/modules/booknow.dart';
import 'package:graduation_baidaa/modules/favorite.dart';
import 'package:graduation_baidaa/modules/home.dart';
import 'package:graduation_baidaa/layout/states.dart';
import 'package:graduation_baidaa/modules/profile.dart';

class BarCubit extends Cubit<BarState>{
  BarCubit() :super(BarInitialStates());
  static BarCubit get(context)=>BlocProvider.of(context);
  int currentIndex=0;

  List<BottomNavigationBarItem>BottomItems=[


    BottomNavigationBarItem(icon:  Icon(Icons.home,),
      label: 'home',
      backgroundColor:  Colors.black87,  ),
    BottomNavigationBarItem(icon:  Icon(Icons.favorite,),
      label: 'Favorite', backgroundColor:  Colors.black87,
    ),
    BottomNavigationBarItem(icon:  Icon(Icons.person_rounded,),
      label: 'profile', backgroundColor:  Colors.black87,

    ),
    BottomNavigationBarItem(icon:  Icon(Icons.shopping_bag,),
      label: 'book now', backgroundColor: Colors.black87,
    ),
  ];

  void changeScreen(int Index){
    currentIndex=Index;
    emit(BarChangestates());


  }
  List<Widget>Screens=[
    Home(),
    favorite(),
    profile(),
    book(),
  ];

}