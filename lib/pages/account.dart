import 'package:flutter/material.dart';
import 'package:instagram_ui/main.dart';
import 'package:instagram_ui/utill/bubble_story.dart';

import '../utill/account_tab1.dart';
import '../utill/account_tab2.dart';
import '../utill/account_tab3.dart';
import '../utill/account_tab4.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  // number of posts , followers , following
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              "237",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text("Posts")
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "2237",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text("Followers")
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "1237",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text("Following")
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Bhanubhakta Poudel",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 10)),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      "tech enthusiast",
                    ),
                  ),
                  Text(
                    "Thank You",
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        child: Text("Edit Profile"),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        child: Text("Ad Tools"),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        child: Text("Insights"),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Row(
                children: [
                  BubbleStories(text: "My memo"),
                  BubbleStories(text: "ok xata"),
                  BubbleStories(text: "frd memo"),
                  BubbleStories(text: "My memo"),
                ],
              ),
            ),
            TabBar(tabs: [
              Tab(
                icon: Icon(Icons.grid_3x3_outlined),
              ),
              Tab(icon: Icon(Icons.video_call)),
              Tab(
                icon: Icon(Icons.shop),
              ),
              Tab(icon: Icon(Icons.person)),
            ]),
            Expanded(
              child: TabBarView(children: [
                Tab1(),
                Tab2(),
                Tab3(),
                Tab4(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
