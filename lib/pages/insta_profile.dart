import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InstaProfile extends StatefulWidget {
  const InstaProfile({super.key});

  @override
  State<InstaProfile> createState() => _InstaProfileState();
}

class _InstaProfileState extends State<InstaProfile> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: const Icon(CupertinoIcons.back),
          title: const Text(
            'ItzMrSandip',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              SizedBox(
                height: 150,
                // color: Colors.yellow,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.red,
                            backgroundImage: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7SieSDnaZtBEq5mYqs-QZEOMuiED6aC6X0Q&s'),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          // Text('Sandip Verma',style: TextStyle(fontWeight: FontWeight.w600),),
                          // Text('Fluitter Developer',style: TextStyle(color: Colors.red),)
                          TextType('Sandip Verma', 'Flutter Developer')
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            TextType('150', 'Posts'),
                            const SizedBox(
                              width: 15,
                            ),
                            TextType('5k', 'Followers'),
                            const SizedBox(
                              width: 15,
                            ),
                            TextType('100', 'Following')
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    backgroundColor: Colors.blue,
                                    padding: const EdgeInsets.only(
                                        left: 40, right: 40)),
                                child: const Text(
                                  'Follow',
                                  style: TextStyle(color: Colors.white),
                                )),
                            const SizedBox(
                              width: 10,
                            ),
                            IconButton(
                                onPressed: () {},
                                style: IconButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: const BorderSide(
                                      color: Colors.blue, width: 2),
                                )),
                                icon: const Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: Colors.blue,
                                )),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 100,
                // color: Colors.orange,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.red,
                            child: Icon(CupertinoIcons.plus),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('New')
                        ],
                      ),
                      FavStory(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7SieSDnaZtBEq5mYqs-QZEOMuiED6aC6X0Q&s',
                          'My'),
                      FavStory(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7SieSDnaZtBEq5mYqs-QZEOMuiED6aC6X0Q&s',
                          'Brazil'),
                      FavStory(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7SieSDnaZtBEq5mYqs-QZEOMuiED6aC6X0Q&s',
                          'London'),
                      FavStory(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7SieSDnaZtBEq5mYqs-QZEOMuiED6aC6X0Q&s',
                          'Paris'),
                    ]),
              ),
              // Container(
              //   height: 100,
              //   color: Colors.red,
              //   child: ListView.builder(
              //     itemBuilder: (context, index) {
              //       return Column(
              //         children: [
              //           Container(
              //             margin: EdgeInsets.all(5),
              //             height: 50,
              //             width: 50,
              //             decoration: BoxDecoration(
              //                 image: DecorationImage(
              //                     image: NetworkImage(
              //                         'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7SieSDnaZtBEq5mYqs-QZEOMuiED6aC6X0Q&s'),
              //                     fit: BoxFit.cover),
              //                 color: Colors.yellow,
              //                 shape: BoxShape.circle),
              //           ),
              //           Text('Text'),
              //         ],
              //       );
              //     },
              //     scrollDirection: Axis.horizontal,
              //     itemCount: 10,
              //   ),
              // ),
              // Divider(),
              SizedBox(
                height: 10,
              ),
              TabBar(tabs: [
                Icon(Icons.grid_on_rounded),
                Icon(Icons.video_library_rounded),
                Icon(Icons.person_pin_outlined),
                Icon(Icons.favorite_border)
              ]),
              SizedBox(height: 5,),
              Expanded(
                  child: TabBarView(
                children: [
                  GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3),
                    itemCount: 15,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTRdeplaZU60qep4hoPfJBAAItDao8ddlCRw&s'),
                                fit: BoxFit.cover),
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(10)),
                        margin: const EdgeInsets.all(5),
                        // height: 100,
                        // width: 100,
                      );
                    },
                  ),
                  Container(color: Colors.red,),
                  Container(color: Colors.yellow,),
                  Container(color: Colors.blue,),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }

  Widget TextType(String text, String detail) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          Text(
            detail,
            style: const TextStyle(color: Colors.red),
          )
        ],
      );

  Widget FavStory(String url, String text) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                // color: Colors.yellow,
                // borderRadius: BorderRadius.circular(30),
                border: Border.all(width: 2, color: Colors.grey.shade600),
                shape: BoxShape.circle),
            padding: const EdgeInsets.all(1.5),
            child: CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(url),
              backgroundColor: Colors.red,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(text),
        ],
      );
}
