import 'package:flutter/material.dart';

class profile_test extends StatelessWidget {
  const profile_test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      //backgroundColor: Colors.black,
      appBar: AppBar(title: const Text("Test profile")),
      body: Container(
        child: Column(children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/a1.jpg"),
                    fit: BoxFit.cover)),
            child: Container(
              width: double.infinity,
              height: 160,
            ),
          ),
          Container(
            height: 460,
            width: size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(30), bottom: Radius.circular(10)),
                border: Border.all(
                  color: Colors.white,
                  width: size.width * 0.01,
                )),
            child: const Text(
              "Flutter for beginner",
              style: TextStyle(color: Colors.cyan),
            ),
          )
        ]),
      ),
    );
  }
}
