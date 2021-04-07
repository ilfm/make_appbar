import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Appbar',
      theme: ThemeData(primarySwatch: Colors.red),
      home: MyPage(),
    );
  }
}

// MyPage a
class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App icon menu'),
        centerTitle: true,
        elevation: 0.0,
        // leading: IconButton(
        //     icon: Icon(Icons.menu),
        //     onPressed: () {
        //       print('menu button is clicked');
        //     }),
        // appbar 왼쪽으로
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                print('shopping button is clicked');
              }),
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print('search button is clicked');
              }),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/bear.jpg'),
                backgroundColor: Colors.white,
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('assets/tree.jpg'),
                  backgroundColor: Colors.white,
                ),
              ],
              accountName: Text(
                'lifm',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w900),
              ),
              accountEmail: Text('dnehd1828@gmail.com'),
              onDetailsPressed: () {
                print('arrow is clicked');
              },
              decoration: BoxDecoration(
                color: Colors.red[400],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0),
                ),
              ),
            ),
            ListTile(
              // 처음에 오는 것
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                print('Home is clicked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              // 처음에 오는 것
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                print('settings is clicked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              // 처음에 오는 것
              leading: Icon(Icons.question_answer),
              title: Text('Q&A'),
              onTap: () {
                print('Q&A is clicked');
              },
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}

/*
 - App bar icon button
 - leading : 아이콘 버튼이나 간단한 위젯을 왼쪽에 배치할 때
 - action : 복수의 아이콘 버튼등을 오른쪽에 배치할 때
 - onPressed : 함수의 형태로 일반 버튼이나 아이콘 버튼을 터치 했을 때
               일어나는 이벤트를 정의 하는 곳                                            

 ====================================================================
  - @Required 는 필수로 넣어야하는 argument
  - onPressed , onTap
  - onPressed는 보통 버튼에 사용하고 onTap은 gestureDetector,Inkwell 과 같은
    길게 누르기 , 두번 탭하기 같은 이벤트를 위한것




 */
