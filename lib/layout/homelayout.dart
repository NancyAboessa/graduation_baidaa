import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_baidaa/layout/cubit.dart';
import 'package:graduation_baidaa/layout/states.dart';
import 'package:graduation_baidaa/shared/componants.dart';


class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => BarCubit(),
      child: BlocConsumer<BarCubit,BarState>(
        listener: (BuildContext context,BarState state){},
        builder:  (BuildContext context, BarState state){
          BarCubit cubit=BarCubit.get(context);

          return  Scaffold(
            body: cubit.Screens[cubit.currentIndex],

            bottomNavigationBar: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: BottomNavigationBar(

            elevation: 10,
            currentIndex: cubit.currentIndex,
            onTap: (Index){
              cubit.changeScreen(Index);
            },
            items: cubit.BottomItems,


    ),
        ),
    );
        },
      ),
    );
  }
}
