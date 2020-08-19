import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home()
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final Map data = {
    'imgs':[
      'https://dhlm2eb86cbhs.cloudfront.net/public/thumbs/news/2020/07/32003/facebook-avatar-main_425_735.jpg',
    'https://s3.amazonaws.com/artistsnclients/k63/samples/pju_800.JPG',
    'https://dt2sdf0db8zob.cloudfront.net/wp-content/uploads/2019/12/9-Best-Online-Avatars-and-How-to-Make-Your-Own-for-Free-image1-5.png',
    'https://www.reval.com.au/plugin/ace_v1.3/assets/avatars/profile-pic.jpg',
    'https://www.w3schools.com/w3images/avatar6.png',
    'https://www.w3schools.com/howto/img_avatar2.png'
    ],

    'names': [
      'Billy',
      'Claudia',
      'Timmy',
      'Jeff',
      'Sarah',
      'Jessica'
    ],
    
    'msgs': [
      'Wassup Billy?',
      'I hope you are fine',
      'No, I don\'t have it',
      'Ssup?',
      'Nah, just busy doing my homeworks',
      'Ssup?'
    ]
  };
  
  @override
  Widget build(BuildContext context) {
      return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(items: [
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.photo_camera), 
        title: Text('Camera')),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.phone), 
        title: Text('Call')),
        BottomNavigationBarItem(icon: Icon(IconData(0xf44e,fontFamily: CupertinoIcons.iconFont, 
  fontPackage: CupertinoIcons.iconFontPackage)), 
        title: Text('Status')),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.conversation_bubble),
        title: Text('Chat'),
        ),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.settings),
        title: Text('Settings')),
        
      ],
      activeColor: CupertinoColors.activeBlue
      ),
       tabBuilder: (context,index){
         return SafeArea(
                    child: CupertinoPageScaffold(
                child: CustomScrollView(
            slivers: <Widget>[
              CupertinoSliverNavigationBar(
                largeTitle: Text('Chat'),
                trailing: Container(
                  child: GestureDetector(
                    onTap: (){
                      
                    },
                    child: Icon(IconData(0xf417,fontFamily: CupertinoIcons.iconFont, 
                        fontPackage: CupertinoIcons.iconFontPackage))
                  )
                ),
                leading: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Edit',style: TextStyle(color: Colors.blue[400],
                   fontSize: 20,
                   fontWeight: FontWeight.bold),),
                ),
              ),
              SliverFillRemaining(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 5),
                      Container(
                        padding: EdgeInsets.fromLTRB(10,7,10,7),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Material(
                              child: Text('Broadcast Lists',
                              style: TextStyle(
                                color: Colors.blue[400]
                              ),),
                            ),
                            Material(
                              child: Text('New Group',
                              style: TextStyle(
                                color: Colors.blue[400]
                              ),),
                            ),
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(8),
                        child: Material(
                        child: TextField(
                          style: TextStyle(fontSize: 13),
                            decoration: InputDecoration(
                              fillColor: Colors.grey[200],
                              filled: true,
                              border: InputBorder.none,
                              hintText: 'Search',
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(30)
                              ),
                              disabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(30)
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(30)
                            ),
                        ),
                        
                      ),
                        )
                      ),
                      ListView.builder(shrinkWrap: true,itemBuilder: (context,index) {
                        return Material(
                            child: ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(data['imgs'][index]),
                            ),
                            title: Text(
                              data['names'][index],
                              style: TextStyle(
                                fontWeight: FontWeight.bold 
                              ),
                            ),
                            subtitle: Text(
                              data['msgs'][index],
                            ),
                            trailing: Column(
                              children: [
                                Text(DateFormat.yMd().format(DateTime.now())),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    
                                    color: Colors.blue[400]
                                  ),
                                  child: Center(child: Text('2',style: TextStyle(color: Colors.white))),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                      itemCount: data['imgs'].length,)
                    ],
                  ),
                )
              )
              
            ],
        ),
      ),
         );
       });
      
  }
}
