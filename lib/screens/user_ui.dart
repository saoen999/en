import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class user_ui extends StatelessWidget {
  const user_ui({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(title: const Text("My Project")),
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(),
              image: DecorationImage(
                  image: AssetImage("assets/images/a1.jpg"),
                  fit: BoxFit.cover)),
          child: Container(
            width: double.infinity,
            height: 200,
          ),
        ),
        Transform.translate(
          offset: const Offset(0.0, 120),
          child: Container(
            child: Container(
                height: double.infinity,
                width: size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(20), bottom: Radius.circular(0)),
                    border: Border.all(
                      color: Colors.white,
                      width: size.width * 0.01,
                    ))),
          ),
        ),
        Transform.translate(
          offset: Offset(0.0, 0),
          child: Container(
            width: double.infinity,
            height: 200,
            child: Container(
              height: 300,
              alignment: const Alignment(0.0, 0.7),
              child: const CircleAvatar(
                backgroundImage: AssetImage("assets/images/A.jpg"),
                radius: 70.0,
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(0, 200, 0, 0),
          alignment: Alignment.center,
          child: Column(children: [
            const Text(
              "User124971040",
              style: TextStyle(fontSize: 20),
            ),
            const Text("@user1111", style: TextStyle(fontSize: 15)),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Post", style: TextStyle(fontSize: 15)),
                SizedBox(width: 80),
                Text("Followers", style: TextStyle(fontSize: 15)),
                SizedBox(width: 50),
                Text("Followings", style: TextStyle(fontSize: 15))
              ],
            ),
            const SizedBox(height: 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("10", style: TextStyle(fontSize: 25)),
                SizedBox(width: 100),
                Text("235", style: TextStyle(fontSize: 25)),
                SizedBox(width: 80),
                Text("100", style: TextStyle(fontSize: 25))
              ],
            )
          ]),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(0, 0, 120, 0),
          alignment: Alignment.center,
          child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Follow",
                style: TextStyle(fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(
                onPrimary: Colors.white,
                primary: Colors.cyan.shade400,
                //onSurface: Colors.grey,
                //side: BorderSide(color: Colors.black, width: 1),
                elevation: 20,
                minimumSize: Size(250, 50),
                //shadowColor: Colors.teal,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
              )),
        ),
        Container(
            padding: EdgeInsets.fromLTRB(250, 0, 0, 0),
            alignment: Alignment.center,
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.chat_bubble_outline,
                  size: 35,
                )))
      ]),
    );
  }
}
