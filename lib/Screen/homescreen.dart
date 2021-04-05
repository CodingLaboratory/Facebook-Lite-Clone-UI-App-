import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: [
      Divider(
        color: Colors.grey[400],
        height: 10,
      ),
      _bodyHeader(),
      _bodySndHeader(),
      Divider(
        color: Colors.grey[400],
        height: 10,
        thickness: 10,
      ),
      _bodySalonPics(),
      Divider(
        color: Colors.grey[200],
        height: 10,
        thickness: 10,
      ),
    ]));
  }

  Widget _bodySalonPics() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 10.0, bottom: 10.0),
          child: Row(
            children: [
              Container(
                height: 45,
                width: 80,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        offset: Offset(1, 1),
                        spreadRadius: 1,
                        blurRadius: 3,
                      )
                    ]),
                child: Row(
                  children: [
                    Icon(
                      Icons.video_call,
                      color: Colors.deepPurple[600],
                    ),
                    Flexible(
                      child: Text(
                        "Crée un salon",
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[600],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Expanded(
                child: Container(
                  height: 50,
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      CircleAvatar(
                        radius: 25.0,
                        backgroundImage: AssetImage("assets/images/FbPic.jpg"),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      CircleAvatar(
                        radius: 25.0,
                        backgroundImage: AssetImage("assets/images/FbPic.jpg"),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      CircleAvatar(
                        radius: 25.0,
                        backgroundImage: AssetImage("assets/images/FbPic.jpg"),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      CircleAvatar(
                        radius: 25.0,
                        backgroundImage: AssetImage("assets/images/FbPic.jpg"),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      CircleAvatar(
                        radius: 25.0,
                        backgroundImage: AssetImage("assets/images/FbPic.jpg"),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      CircleAvatar(
                        radius: 25.0,
                        backgroundImage: AssetImage("assets/images/FbPic.jpg"),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      CircleAvatar(
                        radius: 25.0,
                        backgroundImage: AssetImage("assets/images/FbPic.jpg"),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      CircleAvatar(
                        radius: 25.0,
                        backgroundImage: AssetImage("assets/images/FbPic.jpg"),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

Widget _bodyHeader() {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(
          left: 8.0,
          right: 8.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 30.0,
              backgroundImage: AssetImage("assets/images/FbPic.jpg"),
            ),
            SizedBox(
              width: 10.0,
            ),
            Flexible(
              child: TextField(
                decoration: InputDecoration(
                  hintText: "A quoi pensez vous ?",
                  border: const OutlineInputBorder(),
                  // filled: true,
                ),
              ),
            ),
            VerticalDivider(),
            Column(
              children: [
                Icon(
                  Icons.photo_size_select_actual_outlined,
                  color: Colors.grey,
                ),
                Text("Photo",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w500))
              ],
            )
          ],
        ),
      ),
      Divider(
        color: Colors.grey[400],
        height: 10,
      ),
    ],
  );
}

Widget _bodySndHeader() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          children: [
            Icon(
              Icons.menu_book_rounded,
              size: 22.0,
              color: Colors.blue,
            ),
            Text(
              "Texte",
              style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.video_call,
              size: 22.0,
              color: Colors.red,
            ),
            Text(
              "Vidéo en",
              style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.video_call,
              size: 22.0,
              color: Colors.purple,
            ),
            Text(
              "Salon",
              style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
            )
          ],
        )
      ],
    ),
  );
}
