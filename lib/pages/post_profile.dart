import 'package:flutter/material.dart';

class PostProfile extends StatefulWidget {
  const PostProfile({super.key});

  @override
  State<PostProfile> createState() => _PostProfileState();
}

class _PostProfileState extends State<PostProfile> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
              onTap: () => Navigator.of(context).pop(),
              child: Icon(Icons.keyboard_backspace_rounded)),
          actions: [
            Icon(Icons.favorite_border),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.more_horiz_rounded),
            SizedBox(
              width: 20,
            )
          ],
        ),
        body: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.yellow,
                  radius: 50,
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7SieSDnaZtBEq5mYqs-QZEOMuiED6aC6X0Q&s'),
                ),
                // Text('Sandip Verma',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                // Text('Flutter Developer'),
                TextDesc(
                    'Sandip Verma', 'Flutter Developer | Mobile app developer'),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextDesc('23', 'Created'),
                TextDesc('398', 'Attended'),
                TextDesc('936', 'Followers')
              ],
            ),
            SizedBox(
              height: 30,
            ),
            TabBar(padding: EdgeInsets.all(8),tabs: [
              Icon(Icons.grid_view_outlined),
              Icon(Icons.list_rounded)
            ]),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: TabBarView(children: [
                GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWtjOhdRUMX3T4Y271N1yThwY5X8thc0mdAg&s'),
                                fit: BoxFit.cover)),
                      ),
                    );
                  },
                ),
                ListView.builder(
                  itemBuilder: (context, index) {
                    return Card(
                        color: Colors.grey.shade200,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            leading: CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.purple,
                              backgroundImage: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWtjOhdRUMX3T4Y271N1yThwY5X8thc0mdAg&s'),
                            ),
                            title: Text('This is Random Title'),
                            subtitle: Text('This is subtitle'),
                            trailing: Icon(Icons.more_horiz_rounded),
                          ),
                        ));
                  },
                  itemCount: 10,
                )
              ]),
            )
          ],
        ),
      ),
    );
  }

  Widget TextDesc(String text, String desc) {
    return Column(
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(desc)
      ],
    );
  }
}
