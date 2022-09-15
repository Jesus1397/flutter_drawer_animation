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
      child: isExpanded
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(
                  flex: 1,
                  child: CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage(
                      'assets/pana_miguel.jpg',
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  flex: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Jesus Avendaño',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        maxLines: 1,
                      ),
                      SizedBox(height: 5),
                      Text(
                        '@Jesus1397',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                        maxLines: 1,
                      )
                    ],
                  ),
                ),
                const Expanded(
                  flex: 1,
                  child: Icon(Icons.logout, color: Colors.white),
                ),
              ],
            )
          : Column(
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
    );
  }
}
