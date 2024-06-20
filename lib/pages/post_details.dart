import 'package:flutter/material.dart';

class PostDetails extends StatefulWidget {
  const PostDetails({super.key});

  @override
  State<PostDetails> createState() => _PostDetailsState();
}

class _PostDetailsState extends State<PostDetails> {
  @override
  Widget build(BuildContext context) {
    // var h = MediaQuery.of(context).size.height;
    // var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                    child: SizedBox(
                  height: 350,
                  // color: Colors.yellow,
                  child: Stack(
                    children: [
                      Positioned(
                          child: Container(
                        height: 300,
                        decoration: const BoxDecoration(
                            // color: Colors.red,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUJCLipcdzC6qy2O8a3jlEcRBEWq1VbuGBJw&s'))),
                      )),
                      const Positioned(
                          top: 40,
                          left: 20,
                          child: Icon(
                            Icons.keyboard_backspace_rounded,
                            color: Colors.white,
                          )),
                      const Positioned(
                          top: 40,
                          right: 20,
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                          )),
                      const Positioned(
                          bottom: 0,
                          right: 20,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7SieSDnaZtBEq5mYqs-QZEOMuiED6aC6X0Q&s'),
                            radius: 50,
                          )),
                    ],
                  ),
                )),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(10),
              // color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "This is a randome Title of Topic",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "This is a rondome description of topic",
                    style: TextStyle(fontSize: 15, color: Colors.grey.shade700),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  rowIconText('20', Icons.favorite_rounded),
                  rowIconText('34', Icons.upload),
                  rowIconText('82', Icons.message),
                  rowIconText('295', Icons.face),
                ],
              ),
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                  'This agreement describes your rights and the conditions upon which you may use the Windows software. You should review the entire agreement, including any supplemental license terms that accompany the software and any linked terms, because all of the terms are important and together create this agreement that applies to you. You can review linked terms by pasting the (aka.ms/) link into a browser window.'),
            )
          ],
        ),
      ),
    );
  }

  Widget rowIconText(String text, IconData icon) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          width: 5,
        ),
        Icon(icon)
      ],
    );
  }
}
