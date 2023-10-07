import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_call/pages/joinWithCode.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video Conference"),
        centerTitle: true,
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 40, 0, 0),
          child: ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.add),
            label: Text("New Meeting"),
            style: ElevatedButton.styleFrom(
                fixedSize: Size(350, 30),
                primary: Colors.indigo,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                    ),
          ),
        ),
        Divider(
          thickness: 1,
          height: 40,
          indent: 40,
          endIndent: 20,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 0, 40),
          child: OutlinedButton.icon(
            onPressed: () {
              Get.to(JoinWithCode());
            },
            icon: Icon(Icons.margin),
            label: Text("Join with a code"),
            style: OutlinedButton.styleFrom(
              primary: Colors.indigo,
              side: BorderSide(color: Colors.indigo),
              fixedSize: Size(350, 30),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Image.network(
          "https://i0.wp.com/www.themedicalcareblog.com/wp-content/uploads/2021/10/Screen-Shot-2021-10-25-at-10.02.55-AM.png?fit=1112%2C954&ssl=1",
          height: 400,
          width: 600,
        ),
      ]),
    );
  }
}
