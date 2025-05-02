import 'package:app_profile/components/listile_component.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const CircleAvatar(
                      backgroundColor: Color(0XFFbbefba),
                      radius: 40,
                    ),
                    const Column(
                      children: [
                        Text(
                          'Coffeestories',
                          style: TextStyle(
                              fontSize: 21,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                        Text('mark.brock@icloud.com'),
                      ],
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black),
                        onPressed: () {},
                        child: const Text(
                          'Edit profile',
                          style: TextStyle(color: Colors.white),
                        ))
                  ],
                ),
              ),
            ),
            Expanded(
                child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Inventories',
                    style: TextStyle(color: Colors.black.withOpacity(.8)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0XFFf3f3f3),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.white54, width: .5)),
                    child: Column(
                      children: [
                        ListileComponent(
                          icon: Icons.home,
                          titleText: 'My store',
                          count: '3',
                          trainling: Icon(
                            Icons.arrow_right_alt_outlined,
                            color: Colors.grey.withOpacity(.5),
                          ),
                        ),

                        // ListTile(
                        //   leading: Container(
                        //       padding: const EdgeInsets.all(1),
                        //       decoration: const BoxDecoration(
                        //           color: Colors.white,
                        //           borderRadius:
                        //               BorderRadius.all(Radius.circular(7))),
                        //       child: const Icon(
                        //         Icons.home,
                        //         size: 20,
                        //       )),
                        //   title: Row(
                        //     children: [
                        //       const Text('My store'),
                        //       Container(
                        //           margin: const EdgeInsets.only(left: 10),
                        //           padding: const EdgeInsets.all(6),
                        //           decoration: const BoxDecoration(
                        //               color: Colors.green,
                        //               shape: BoxShape.circle),
                        //           child: const Text(
                        //             '2',
                        //             style: TextStyle(color: Colors.white),
                        //           ))
                        //     ],
                        //   ),
                        //   trailing: Icon(
                        //     Icons.arrow_right_alt_outlined,
                        //     color: Colors.grey.withOpacity(.5),
                        //   ),
                        // ),
                        Container(
                            margin: const EdgeInsets.symmetric(horizontal: 20),
                            child: Divider(
                              color: Colors.black.withOpacity(.1),
                            )),

                        ListileComponent(
                          icon: Icons.support,
                          titleText: 'Support',
                          trainling: Icon(
                            Icons.arrow_right_alt_outlined,
                            color: Colors.grey.withOpacity(.5),
                          ),
                        ),
                        // ListTile(
                        //   leading: Container(
                        //       padding: const EdgeInsets.all(1),
                        //       decoration: const BoxDecoration(
                        //           color: Colors.white,
                        //           borderRadius:
                        //               BorderRadius.all(Radius.circular(7))),
                        //       child: const Icon(
                        //         Icons.support,
                        //         size: 20,
                        //       )),
                        //   title: const Text(
                        //     'Support',
                        //     style: TextStyle(fontWeight: FontWeight.w400),
                        //   ),
                        //   trailing: Icon(
                        //     Icons.arrow_right_alt_outlined,
                        //     color: Colors.grey.withOpacity(.5),
                        //   ),
                        // )
                      ],
                    ),
                  )
                ],
              ),
            )),
            Expanded(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Preferences',
                        style: TextStyle(color: Colors.black.withOpacity(.8)),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: const Color(0XFFf3f3f3),
                            borderRadius: BorderRadius.circular(20),
                            border:
                                Border.all(color: Colors.white54, width: .5)),
                        child: Column(
                          children: [
                            ListileComponent(
                              icon: Icons.notifications_active_outlined,
                              titleText: 'Push notifications',
                              trainling: Switch.adaptive(
                                  value: true, onChanged: (value) {}),
                            ),
                            Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Divider(
                                  color: Colors.black.withOpacity(.1),
                                )),
                            ListileComponent(
                              icon: Icons.face_outlined,
                              titleText: 'Face ID',
                              trainling: Switch.adaptive(
                                  value: true, onChanged: (value) {}),
                            ),
                            Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Divider(
                                  color: Colors.black.withOpacity(.1),
                                )),
                            ListileComponent(
                                icon: Icons.pin,
                                titleText: 'PIN code',
                                trainling: Icon(
                                  Icons.arrow_right_alt_outlined,
                                  color: Colors.grey.withOpacity(.5),
                                )),
                            Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Divider(
                                  color: Colors.black.withOpacity(.1),
                                )),
                            ListileComponent(
                              icon: Icons.logout,
                              colorIcon: Colors.red.withOpacity(.5),
                              titleText: 'Logout',
                              bgIcon: Colors.red.withOpacity(.1),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
