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
    );
  }
}

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(top: 20, left: 20),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      width: MediaQuery.of(context).size.width * 0.20,
      height: MediaQuery.of(context).size.height * 0.9,
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const FlutterLogo(),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Divider(color: Colors.grey, thickness: 1),
          ),
          const Icon(Icons.home_outlined, color: Colors.white),
          const SizedBox(height: 15),
          const Icon(Icons.calendar_today, color: Colors.white),
          const SizedBox(height: 15),
          const Icon(Icons.pin_drop_rounded, color: Colors.white),
          const SizedBox(height: 15),
          const Icon(Icons.message, color: Colors.white),
          const SizedBox(height: 15),
          const Icon(Icons.cloud, color: Colors.white),
          const SizedBox(height: 15),
          const Icon(Icons.airplane_ticket, color: Colors.white),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Divider(color: Colors.grey, thickness: 1),
          ),
          const Spacer(),
          const Icon(Icons.notifications, color: Colors.white),
          const SizedBox(height: 15),
          const Icon(Icons.settings, color: Colors.white),
          const SizedBox(height: 15),
          Container(
            width: MediaQuery.of(context).size.width * 0.14,
            height: MediaQuery.of(context).size.height * 0.12,
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Color(0xff2C2C2C),
              borderRadius: BorderRadius.all(
                Radius.circular(22),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CircleAvatar(),
                Icon(Icons.logout, color: Colors.white),
              ],
            ),
          ),
          const SizedBox(height: 15),
          const Icon(Icons.keyboard_arrow_right_rounded, color: Colors.white),
        ],
      ),
    );
  }
}
