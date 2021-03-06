import 'package:flutter/material.dart';
import 'package:state_management/models/user.dart';
import 'package:state_management/services/user_service.dart';


class TwoPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StreamBuilder(
          stream: userService.userStream,
          builder: (BuildContext context, AsyncSnapshot<User> snapshot) {
            return snapshot.hasData 
              ? Text('${snapshot.data.name}')
              : Text('Page 2');
          },
        )
      ),
      body: Column(
        children: [
          MaterialButton(
            child: Text('Set user', style: TextStyle(color: Colors.white),),
            color: Colors.blue,
            onPressed: () {
              final user = User(
                name: "Test user",
                age: 19,
                professions: []
              );

              userService.setUser(user);
            },
          ),
          MaterialButton(
            child: Text('Set age', style: TextStyle(color: Colors.white),),
            color: Colors.blue,
            onPressed: () {
              userService.user.age = 20;
            },
          ),
          MaterialButton(
            child: Text('Add profession', style: TextStyle(color: Colors.white),),
            color: Colors.blue,
            onPressed: () {
              
            },
          )
        ],
      )
   );
  }
}