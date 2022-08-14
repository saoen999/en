import 'package:flutter/material.dart';

class user_notification extends StatelessWidget {
  const user_notification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hi")),
      drawer: Drawer(),
      body: listViewprofile(),
    );
  }
}

class listViewprofile extends StatelessWidget {
  const listViewprofile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: const CircleAvatar(
              backgroundImage: AssetImage("assets/images/A.jpg")),
          title: Builder(builder: (context) {
            return const Text("User 1 has been following you");
          }),
        ),
        const Divider(
          color: Colors.black,
          thickness: 0.80,
          endIndent: 20,
          indent: 70,
        ),
        ListTile(
          leading: const CircleAvatar(
              backgroundImage: AssetImage("assets/images/Aeonix.jpg")),
          title: Builder(builder: (context) {
            return const Text("User 2 has liked your post");
          }),
        ),
        const Divider(
          color: Colors.black,
          thickness: 0.5,
          endIndent: 20,
          indent: 70,
        ),
      ],
    );
  }
}
