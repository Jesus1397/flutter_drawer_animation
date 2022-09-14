import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    Key? key,
    required this.duration,
    required this.isExpanded,
    required this.size,
  }) : super(key: key);

  final Duration duration;
  final bool isExpanded;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: duration,
      width: isExpanded ? size.width * 0.8 : size.width * 0.20,
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
    );
  }
}
