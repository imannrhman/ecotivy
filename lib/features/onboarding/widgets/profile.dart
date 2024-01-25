import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final Widget profile;
  final String title;
  final String name;
  final String subtitle;

  const Profile(
      {super.key,
      required this.title,
      required this.name,
      required this.subtitle, required this.profile});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              alignment: Alignment.center,
              child: Text(title, style: const TextStyle(
                fontWeight: FontWeight.w600,
              ),),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    margin: const EdgeInsets.only(top: 60),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 20,),
                        Expanded(
                          child: Text(
                            name,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            subtitle,
                            style: const TextStyle(
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10,),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                      width: 80,
                      height: 80,
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: profile,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
