import 'package:flutter/material.dart';
import 'package:state_management/models/user.dart';
import 'package:state_management/services/user_service.dart';

class OnePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
      ),
      body: StreamBuilder(
        stream: userService.userStream ,  
        builder: (BuildContext context, AsyncSnapshot<User> snapshot){
          return snapshot.hasData
            ? UserInformation(snapshot.data) 
            : Center(child: Text("No user exists"));
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.ac_unit),
        onPressed: () => Navigator.pushNamed(context, 'page2'),
      ),
    );
  }
}

class UserInformation extends StatelessWidget {

  final User user;

  UserInformation(this.user);


  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Text(
            'General',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Divider(),
          ListTile(
            title: Text('Name: ${this.user.name}'),
          ),
          ListTile(
            title: Text('Age: ${this.user.age}'),
          ),

          Text(
            'Professions',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Divider(),
          ListTile(
            title: Text('Profession 1: '),
          ),
          ListTile(
            title: Text('Profession 2: '),
          )
        ],
      ),
    );
  }
}
