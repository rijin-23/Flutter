import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex =0;

  @override
  List names = ['Believer','Mi Gente','Sunflower','Youngblood'];

  List names1 = ['Bad Guy','Faded','Happier','Taki Taki'];

  List songs = ['believer.jpg','mi gente.jpg','sunflower.jpg','youngblood.jpg'];

  List songs1 = ['bad guy.jpg','faded.jpg','happier.jpg','taki taki.jpg'];

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
         body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListView(
                  children: <Widget>[Container(
                  
             child:Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: <Widget>[
                     SizedBox(height:10.0),
                     Row(mainAxisAlignment: MainAxisAlignment.end,children: <Widget>[
                       Icon(Icons.settings,color: Colors.white,size: 30.0,)
                     ],),
                     
                    Text('Good Evening',style: TextStyle(color: Colors.white,fontSize: 25.0),),
                     
                     SizedBox(height: 20.0,),
                     Row(
                       
                       children: <Widget>[
                         Container(
                           height: 50.0,
                           width: 180.0,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(5.0),
                           color: Colors.grey[900],

                           ),
                           child: Row(
                          
                            children: <Widget>[
                              Image.asset('assets/youngblood.jpg'),
                              SizedBox(width:10.0),
                              Text('Youngblood',style: TextStyle(color:Colors.white),)
                            ],
                           ),
                         ),
                         SizedBox(width: 10.0,),
                         Container(
                           height: 50.0,
                           width: 180.0,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(5.0),
                           color: Colors.grey[900],

                           ),
                           child: Row(

                            children: <Widget>[
                              Image.asset('assets/believer.jpg'),
                              SizedBox(width:10.0),
                              Text('Believer',style: TextStyle(color:Colors.white),)
                            ],
                           ),
                         ),
                       ],
                     ),
                     SizedBox(height:15.0),
                     Row(
                       
                       children: <Widget>[
                         
                         Container(
                           height: 50.0,
                           width: 180.0,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(5.0),
                           color: Colors.grey[900],

                           ),
                           child: Row(
                             
                            children: <Widget>[
                              Image.asset('assets/sunflower.jpg'),
                              SizedBox(width:10.0),
                              Text('Sunflower',style: TextStyle(color:Colors.white),)
                            ],
                           ),
                         ),
                         SizedBox(width: 10.0,),
                         Container(
                           height: 50.0,
                           width: 180.0,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(5.0),
                           color: Colors.grey[900],

                           ),
                           child: Row(

                            children: <Widget>[
                              Image.asset('assets/mi gente.jpg'),
                              SizedBox(width:10.0),
                              Text('Mi Gente',style: TextStyle(color:Colors.white),)
                            ],
                           ),
                         ),
                       ],
                     ),
                     SizedBox(height:15.0),
                     Row(
                       
                       children: <Widget>[
                         
                         Container(
                           height: 50.0,
                           width: 180.0,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(5.0),
                           color: Colors.grey[900],

                           ),
                           child: Row(
                             
                            children: <Widget>[
                              Image.asset('assets/happier.jpg'),
                              SizedBox(width:10.0),
                              Text('Happier',style: TextStyle(color:Colors.white),)
                            ],
                           ),
                         ),
                         SizedBox(width: 10.0,),
                         Container(
                           height: 50.0,
                           width: 180.0,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(5.0),
                           color: Colors.grey[900],

                           ),
                           child: Row(

                            children: <Widget>[
                              Image.asset('assets/taki taki.jpg'),
                              SizedBox(width:10.0),
                              Text('Taki Taki',style: TextStyle(color:Colors.white),)
                            ],
                           ),
                         ),
                       ],
                     ),
                     
                     SizedBox(height: 40.0,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:8.0),
                        child: Text('Recently Played',style: TextStyle(
                           color: Colors.white,
                           fontSize: 25.0
                         ),),
                      ),
                     
                     SizedBox(height:10.0),
                     Container(
                       height: 200.0,
                       child: ListView.builder(itemCount: names.length,shrinkWrap: true,scrollDirection: Axis.horizontal,itemBuilder: (context,index){
                             return Padding(
                               padding: const EdgeInsets.all(10.0),
                               child: Container(
                                 height: 150.0,
                                 width: 150.0,
                                 color: Colors.transparent,
                                 child: Column(
                                   children: <Widget>[
                                     Container(
                                       height: 130.0,
                                       decoration: BoxDecoration(
                                         image: DecorationImage(image: AssetImage('assets/${songs[index]}'),fit: BoxFit.cover)
                                       ),
                                     ),
                                     SizedBox(
                                       height: 20.0
                                     ),
                                     Text('${names[index]}',style: TextStyle(color: Colors.white,fontSize: 15.0),)
                                   ],
                                 ),
                               ),
                             );
                           }),
                     ),
                     SizedBox(height: 20.0,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:8.0),
                        child: Text('Your Favorites',style: TextStyle(
                           color: Colors.white,
                           fontSize: 25.0
                         ),),
                      ),
                     
                     SizedBox(height:10.0),
                     Container(
                       height: 220.0,
                       child: ListView.builder(itemCount: names.length,shrinkWrap: true,scrollDirection: Axis.horizontal,itemBuilder: (context,index){
                             return Padding(
                               padding: const EdgeInsets.all(10.0),
                               child: Container(
                                 height: 170.0,
                                 width: 170.0,
                                 color: Colors.transparent,
                                 child: Column(
                                   children: <Widget>[
                                     Container(
                                       height: 150.0,
                                       decoration: BoxDecoration(
                                         image: DecorationImage(image: AssetImage('assets/${songs1[index]}'),fit: BoxFit.cover)
                                       ),
                                     ),
                                     SizedBox(
                                       height: 20.0
                                     ),
                                     Text('${names1[index]}',style: TextStyle(color: Colors.white,fontSize: 15.0),)
                                   ],
                                 ),
                               ),
                             );
                           }),
                     ),
                   ],
             )
           ),]
                ),
              ),
         ),
         bottomNavigationBar: BottomNavigationBar(currentIndex: _currentIndex,items: [
           BottomNavigationBarItem(icon: Icon(Icons.home),
           title: Text('Home'),
           backgroundColor: Colors.grey[800]),
           BottomNavigationBarItem(icon: Icon(Icons.search),
           title: Text('Search'),
           backgroundColor: Colors.grey[750]),
           BottomNavigationBarItem(icon: Icon(Icons.library_books),
           title: Text('Library'),
           backgroundColor: Colors.grey[750]),
           BottomNavigationBarItem(icon: Icon(Icons.wifi),
           title: Text('Premium'),
           backgroundColor: Colors.grey[750])
         ],
         onTap: (index){
           setState(() {
             _currentIndex = index;
           });
         },),
      ),
    );
  }
}