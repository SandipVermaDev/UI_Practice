import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InstaHome extends StatefulWidget {
  const InstaHome({super.key});

  @override
  State<InstaHome> createState() => _InstaHomeState();
}

class _InstaHomeState extends State<InstaHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instagram',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        actions: [
          Icon(Icons.favorite_border,size: 36),
          SizedBox(
            width: 10,
          ),
          Stack(children: [
            Icon(Icons.messenger_outline,size: 36),
            Positioned(
                right: 0,
                child: Container(
                  height: 20,
                  width: 20,
                  // color: Colors.red,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                      child: Text(
                    '2',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
                ))
          ]),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 140,
            // color: Colors.blue,
            child: Stories(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTRdeplaZU60qep4hoPfJBAAItDao8ddlCRw&s',
                'ItzMrSandip'),
          ),

          Expanded(
            child: Container(
              color: Colors.grey,
              child: Posts(profileUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7SieSDnaZtBEq5mYqs-QZEOMuiED6aC6X0Q&s',
                  uname: 'ItzMrSandip',
                  postUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUJCLipcdzC6qy2O8a3jlEcRBEWq1VbuGBJw&s',
                  likes: '51,752',
                  description: 'This is Random Discription.',
                  location: 'Surat'),
            ),
          )
        ],
      ),
    );
  }

  Widget Stories(String url, String uname) {
    return ListView.builder(
      itemBuilder: (context, index) {
        if (index == 0)
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Stack(
                  children: [
                    Positioned(
                      child: Container(
                        height: 88,
                        width: 88,
                        // color: Colors.yellow,
                        child: Stack(
                          children: [
                            Center(
                              child: Container(
                                height: 80,
                                width: 80,
                                // color: Colors.red,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  // color: Colors.red
                                  image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7SieSDnaZtBEq5mYqs-QZEOMuiED6aC6X0Q&s'))
                                ),
                              ),
                            ),
                            Positioned(
                                bottom: 2,
                                right: 2,
                              child: Container(height: 30,width: 30,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  shape: BoxShape.circle,
                                border: Border.all(width: 2,color: Colors.white)
                              ),
                                child: Center(child: Icon(CupertinoIcons.plus,color: Colors.white,),),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text('Your Story')
            ],
          );

        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                  border: Border.all(width: 4, color: Colors.pink),
                  shape: BoxShape.circle),
              margin: EdgeInsets.all(8),
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.yellow,
                backgroundImage: NetworkImage(url),
              ),
            ),
            Text(uname)
          ],
        );
      },
      itemCount: 10,
      scrollDirection: Axis.horizontal,
    );
  }

  Widget Posts(
      {required String profileUrl,
      required String uname,
        required String location,
      required String postUrl,
      required String likes,
      required String description}){
    return ListView.builder(itemBuilder: (context, index) {
      return Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            border: Border.all(width: 3,color: Colors.pink),
                            shape: BoxShape.circle
                          ),
                          child: CircleAvatar(backgroundColor: Colors.yellow,radius: 25,backgroundImage: NetworkImage(profileUrl),)),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(uname),
                        Text(location),
                      ],
                    ),
                  ],
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white24,
                        ),
                        onPressed: (){}, child: Text('Follow')),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(Icons.more_vert),
                    )
                  ],
                ),
              ],
            ),
            //Post
            Container(
              height: 300,
              // width: double.infinity,
              color: Colors.black,
              child: Image.network(postUrl,fit: BoxFit.cover,),
            ),
            Container(
              height: 60,
              // color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Icon(Icons.favorite_border,size: 36,),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Icon(Icons.mode_comment_outlined,size: 36),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Icon(Icons.send_rounded,size: 36),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: Icon(Icons.save_alt_rounded,size: 36),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text('$likes  likes',style: TextStyle(fontSize: 16),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0,bottom: 10),
              child: Text('$uname  $description',style: TextStyle(fontSize: 16),),
            ),
          ],
        ),
      );
    },
      itemCount: 10,
    );
  }
}
