import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = MediaQuery.of(context).size.width * 0.9;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundColor: Colors.amber,
              radius: 60,
              child: Icon(
                Icons.person,
                color: Color.fromARGB(207, 47, 47, 47),
                size: 100,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Jon Doe',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'john.doe@example.com',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            Button(size, size.width * 0.6, Colors.amber, 'Upgrade to PRO',
                Colors.black),
            const SizedBox(
              height: 20,
            ),
            Listbuttons(
              size,
              const Color.fromARGB(255, 212, 212, 235),
              'Privacy',
              const Color.fromARGB(255, 35, 35, 35),
              const Icon(
                Icons.privacy_tip_outlined,
                color: Color.fromARGB(255, 35, 35, 35),
              ),
              const Icon(
                Icons.arrow_right_alt_outlined,
                color: Color.fromARGB(255, 35, 35, 35),
                size: 30,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Listbuttons(
              size,
              const Color.fromARGB(255, 212, 212, 235),
              'Purchase History',
              const Color.fromARGB(255, 35, 35, 35),
              const Icon(
                Icons.history_outlined,
                color: Color.fromARGB(255, 35, 35, 35),
              ),
              const Icon(
                Icons.arrow_right_alt_outlined,
                color: Color.fromARGB(255, 35, 35, 35),
                size: 30,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Listbuttons(
              size,
              const Color.fromARGB(255, 212, 212, 235),
              'Help & Support',
              const Color.fromARGB(255, 35, 35, 35),
              const Icon(
                Icons.help_outline,
                color: Color.fromARGB(255, 35, 35, 35),
              ),
              const Icon(
                Icons.arrow_right_alt_outlined,
                color: Color.fromARGB(255, 35, 35, 35),
                size: 30,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Listbuttons(
              size,
              const Color.fromARGB(255, 212, 212, 235),
              'Settings',
              const Color.fromARGB(255, 35, 35, 35),
              const Icon(
                Icons.settings,
                color: Color.fromARGB(255, 35, 35, 35),
              ),
              const Icon(
                Icons.arrow_right_alt_outlined,
                color: Color.fromARGB(255, 35, 35, 35),
                size: 30,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Listbuttons(
              size,
              const Color.fromARGB(255, 212, 212, 235),
              'Invite a Friend',
              const Color.fromARGB(255, 35, 35, 35),
              const Icon(
                Icons.person_add_outlined,
                color: Color.fromARGB(255, 35, 35, 35),
              ),
              const Icon(
                Icons.arrow_right_alt_outlined,
                color: Color.fromARGB(255, 35, 35, 35),
                size: 30,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Button(
                size,
                size.width * 0.9,
                const Color.fromARGB(255, 40, 40, 40),
                'Logout',
                const Color.fromARGB(255, 255, 255, 255)),
          ],
        ),
      ),
    );
  }

  Container Listbuttons(Size size, Color color, String title, Color titlecolor,
      Icon iconleading, Icon icontrailing) {
    return Container(
      height: size.height * 0.08,
      width: size.width * 0.9,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 212, 212, 235),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: ListTile(
            leading: iconleading,
            title: Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            trailing: icontrailing,
          ),
        ),
      ),
    );
  }

  Container Button(
      Size size, double width, Color color, String title, Color titlecolor) {
    return Container(
      height: size.height * 0.06,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w500, color: titlecolor),
        ),
      ),
    );
  }
}
