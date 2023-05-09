import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: homeApp(),
    );
  }
}

class homeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Profile',
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.all(16.0),
                child: Center(
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage(
                          'assets/images/avatar.jpg',
                        ),
                      ),
                      Positioned(
                        top: 60,
                        left: 50,
                        bottom: 0,
                        right: -1,
                        child: SizedBox(
                            height: 50,
                            width: 50,
                            child: IconButton(
                              color: Colors.red,
                              icon: const Icon(Icons.camera_alt),
                              onPressed: () {},
                            )),
                      ),
                    ],
                  ),
                )),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: MaterialButton(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                height: 50,
                color: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                minWidth: double.infinity,
                onPressed: () {},
                child: Row(
                  children: const [
                    Icon(
                      Icons.account_circle,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Text(
                        'My Account',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Icon(Icons.navigate_next,color: Colors.white,size: 30,)
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: MaterialButton(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                height: 50,
                color: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                minWidth: double.infinity,
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.add_alert,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Text(
                        'Notifications',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Icon(Icons.navigate_next,color: Colors.white,size: 30,)
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: MaterialButton(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                minWidth: double.infinity,
                color: Colors.grey,
                height: 50,
                child: Row(
                  children: [
                    Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Text(
                        'Settings',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Icon(Icons.navigate_next,color: Colors.white,size: 30,)
                  ],
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: MaterialButton(
                padding: EdgeInsets.symmetric(horizontal: 30),
                color: Colors.grey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                height: 50,
                minWidth: double.infinity,
                child: Row(
                  children: [
                    Icon(
                      Icons.help,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Text(
                        'Help Center',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Icon(Icons.navigate_next,color: Colors.white,size: 30,)
                  ],
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: MaterialButton(
                height: 50,
                padding: EdgeInsets.symmetric(horizontal: 30),
                color: Colors.grey,
                minWidth: double.infinity,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.output,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child:
                          Text('Log Out', style: TextStyle(color: Colors.white)),
                    ),
                    Icon(Icons.navigate_next,color: Colors.white,size: 30,)
                  ],
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
