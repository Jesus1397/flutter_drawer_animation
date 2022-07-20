import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            );
          },
        ),
      ),
      body: const Center(
        child: Text('IG: Jesus_fy_'),
      ),
    );
  }
}

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  var isEnabled = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 1000),
      margin: const EdgeInsets.only(top: 20, left: 20),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      width: isEnabled ? size.width * 0.8 : size.width * 0.20,
      height: size.height * 0.9,
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            child: const FlutterLogo(),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Divider(color: Colors.grey, thickness: 1),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            child: Column(
              children: const [
                Icon(Icons.home_outlined, color: Colors.white),
                SizedBox(height: 15),
                Icon(Icons.calendar_today, color: Colors.white),
                SizedBox(height: 15),
                Icon(Icons.pin_drop_rounded, color: Colors.white),
                SizedBox(height: 15),
                Icon(Icons.message, color: Colors.white),
                SizedBox(height: 15),
                Icon(Icons.cloud, color: Colors.white),
                SizedBox(height: 15),
                Icon(Icons.airplane_ticket, color: Colors.white),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Divider(color: Colors.grey, thickness: 1),
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            child: Column(
              children: const [
                Icon(Icons.notifications, color: Colors.white),
                SizedBox(height: 15),
                Icon(Icons.settings, color: Colors.white),
                SizedBox(height: 15),
              ],
            ),
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 1000),
            width: isEnabled ? size.width * 0.8 : size.width * 0.20,
            height: size.height * 0.12,
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Color(0xff2C2C2C),
              borderRadius: BorderRadius.all(
                Radius.circular(22),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CircleAvatar(
                    backgroundImage: AssetImage(
                      'assets/pana_miguel.jpg',
                    ),
                  ),
                  Icon(Icons.logout, color: Colors.white),
                ],
              ),
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isEnabled = !isEnabled;
                });
              },
              child: const Icon(
                Icons.keyboard_arrow_right_rounded,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
