import 'package:dating_app/models/users_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/swipe/swipe_bloc.dart';
import '../../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  static Route route(){
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (context) =>HomeScreen()
    );
  }
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'DISCOVER', hasActions: true,),
      body: BlocBuilder<SwipeBloc, SwipeState>(
        builder : (context, state){
          if (state is SwipeLoading){
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if(state is SwipeLoaded){
            return Column(
            children: [
              InkWell(
                onDoubleTap: () {
                  Navigator.pushNamed(context, '/users', arguments: state.users[0]);
                },
                child: Draggable(
                  child: UserCard(user: state.users[0]),
                  feedback: UserCard(user: state.users[0]),
                  childWhenDragging: UserCard(user: state.users[1]),
                  onDragEnd: (drag){
                    if (drag.velocity.pixelsPerSecond.dx < 0){
                      context.read<SwipeBloc>()..add(SwipeLeft(user: state.users[0]));
                      print('Swiped left');
                    } else {
                      context.read<SwipeBloc>()..add(SwipeRight(user: state.users[0]));
                      print('Swiped Right');
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ChoiceButton(
                      width: 60,
                      height: 60,
                      size: 25,
                      color: Theme.of(context).accentColor,
                      hasGradient: false,
                      icon: Icons.clear_rounded,
                    ),
                    ChoiceButton(
                      width: 80,
                      height: 80,
                      size: 30,
                      color: Colors.white,
                      hasGradient: true,
                      icon: Icons.favorite,
                    ),
                    ChoiceButton(
                      width: 60,
                      height: 60,
                      size: 25,
                      color: Theme.of(context).accentColor,
                      hasGradient: false,
                      icon: Icons.watch_later,
                    ),
                  ],
                ),
              ),
            ],
            );
          }
          else {
            return Text('Something went wrong');
          }
        },
      ),
    );
  }
}





