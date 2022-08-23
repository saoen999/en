import 'package:flutter/material.dart';
import 'package:meetup/widget/BottomNavbar.dart';
import 'package:meetup/widget/postcard/user.dart';
import 'package:meetup/assets/meet_icon.dart';

//import 'package:meetup/widget/postcard/postcard.dart';
class FollowingPage extends StatefulWidget {
  const FollowingPage({Key? key}) : super(key: key);

  @override
  _FollowingPageState createState() => _FollowingPageState();
}

class _FollowingPageState extends State<FollowingPage>
    with TickerProviderStateMixin {
  List<User> users = [
    User(
        'Elliana Palacios',
        '@elliana',
        'https://images.unsplash.com/photo-1504735217152-b768bcab5ebc?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=0ec8291c3fd2f774a365c8651210a18b',
        false),
    User(
        'Kayley Dwyer',
        '@kayley',
        'https://images.unsplash.com/photo-1503467913725-8484b65b0715?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=cf7f82093012c4789841f570933f88e3',
        false),
    User(
        'KaiZz',
        '@kaiiii',
        'https://images.unsplash.com/photo-1507081323647-4d250478b919?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=b717a6d0469694bbe6400e6bfe45a1da',
        false),
    User(
        'En',
        '@en168',
        'https://images.unsplash.com/photo-1502980426475-b83966705988?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=ddcb7ec744fc63472f2d9e19362aa387',
        false),
    User(
        'Vichara',
        '@ra22',
        'https://images.unsplash.com/photo-1541710430735-5fca14c95b00?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&ixid=eyJhcHBfaWQiOjE3Nzg0fQ',
        false),
    User(
        "Vichea",
        "@vichea911",
        "https://th.bing.com/th?q=Small+Dogs&w=120&h=120&c=1&rs=1&qlt=90&cb=1&pid=InlineBlock&mkt=en-WW&cc=KH&setlang=en&adlt=strict&t=1&mw=247",
        false),
    User(
        'Elliana Palacios',
        '@elliana',
        'https://images.unsplash.com/photo-1504735217152-b768bcab5ebc?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=0ec8291c3fd2f774a365c8651210a18b',
        false),
    User(
        'Kayley Dwyer',
        '@kayley',
        'https://images.unsplash.com/photo-1503467913725-8484b65b0715?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=cf7f82093012c4789841f570933f88e3',
        false),
    User(
        'KaiZz',
        '@kaiiii',
        'https://images.unsplash.com/photo-1507081323647-4d250478b919?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=b717a6d0469694bbe6400e6bfe45a1da',
        false),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          NestedScrollView(
            floatHeaderSlivers: true,
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  floating: true,
                  expandedHeight: size.height * 0,
                  //forceElevated: innerBoxIsScrolled,
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
            body: Container(
                padding: const EdgeInsets.only(right: 20, left: 20),
                color: Colors.blue,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: users.length,
                  itemBuilder: (context, index) {
                    return userComponent(user: users[index]);
                  },
                )),
          ),
          BottomNavbar()
        ],
      ),
    );
  }

  userComponent({required User user}) {
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            SizedBox(
                width: 60,
                height: 60,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.network(user.image),
                )),
            const SizedBox(width: 10),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(user.name,
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500)),
              const SizedBox(
                height: 5,
              ),
              Text(user.username, style: TextStyle(color: Colors.grey[600])),
            ])
          ]),
          Container(
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xffeeeeee)),
                borderRadius: BorderRadius.circular(50),
              ),
              child: MaterialButton(
                elevation: 0,
                color: user.isFollowedByMe
                    ? Color.fromARGB(255, 238, 238, 238)
                    : const Color(0xffffff),
                onPressed: () {
                  setState(() {
                    user.isFollowedByMe = !user.isFollowedByMe;
                  });
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Text(user.isFollowedByMe ? 'Unfollow' : 'Follow',
                    style: const TextStyle(color: Colors.black)),
              ))
        ],
      ),
    );
  }
}
