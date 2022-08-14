import 'package:flutter/material.dart';
import 'package:meetup/assets/meet_icon.dart';
import 'package:meetup/widget/BottomNavbar.dart';
import 'package:meetup/widget/postcard/user.dart';

class ApN extends StatelessWidget {
  const ApN({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [
        NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                automaticallyImplyLeading: false,
                floating: true,
                expandedHeight: size.height * 0,
                forceElevated: innerBoxIsScrolled,
                backgroundColor: Colors.white,
                elevation: 0,
                stretch: true,
                title: Icon(MeetLogo.Logo, color: Colors.cyan, size: 60),
                actions: <Widget>[
                  IconButton(
                    iconSize: 35,
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                  ),
                  IconButton(
                    iconSize: 35,
                    onPressed: () {},
                    icon: Icon(
                      Icons.chat_bubble_outline_outlined,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ];
          },
          body: SafeArea(
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://th.bing.com/th/id/OIP.RSAEpwrFLllrDMCl3BVlaAHaEK?w=304&h=180&c=7&r=0&o=5&pid=1.7"),
                          fit: BoxFit.cover)),
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    child: Container(
                      alignment: const Alignment(0.0, 2.5),
                      child: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://z-p3-scontent.fpnh5-3.fna.fbcdn.net/v/t1.6435-9/146353341_752257802144530_951055539088688094_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeHOsWAKcTYiPaXqs1qkj65IhqRpbgj46MiGpGluCPjoyLh1hXqCnJfDZSgkn-NWKmWUbVYrwjt0ZtGTbmhyR9ni&_nc_ohc=8e6bkIFAIRoAX8CpSUR&_nc_ht=z-p3-scontent.fpnh5-3.fna&oh=00_AT-zcRRV3k-cEJNhJuU7zInncTKHcwPu4U3YVEekPps3VQ&oe=62E280AD"),
                        radius: 60.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 68,
                ),
                const Text(
                  "No Name",
                  style: const TextStyle(
                      fontSize: 24.0,
                      color: Colors.black,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 10,
                ),
                Card(
                  color: Colors.white,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 8.0),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              const Text(
                                "Posts",
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                height: 7,
                              ),
                              const Text(
                                "10",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w300),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              const Text(
                                "Followers",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                height: 7,
                              ),
                              const Text(
                                "235",
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w300),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              const Text(
                                "Followings",
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                height: 7,
                              ),
                              const Text(
                                "100",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w300),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        BottomNavbar(),
      ],
    ));
  }
}
