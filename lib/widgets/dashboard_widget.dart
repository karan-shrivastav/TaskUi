import 'package:flutter/material.dart';
import 'package:taskui/widgets/text_widget.dart';
import '../models/user_model.dart';

class DashBoardWidget extends StatefulWidget {
  const DashBoardWidget({super.key});

  @override
  State<DashBoardWidget> createState() => _DashBoardWidgetState();
}

class _DashBoardWidgetState extends State<DashBoardWidget> {

  List<UserModel> userList = [
    UserModel(
      name: 'Subh',
      url: 'https://media.gettyimages.com/id/1369199360/photo/portrait-of-a-handsome-young-businessman-working-in-office.jpg?s=612x612&w=gi&k=20&c=BFc13n-vhT4GMd0ohRt0PFD3IzJ_Onf6nKDAObgh1CA='
    ),
    UserModel(
        name: 'Sachin',
        url: 'https://media.gettyimages.com/id/1424988699/photo/businessman-contemplating-in-the-office-looking-through-the-window.jpg?s=612x612&w=0&k=20&c=ULWlFNUkyF8WCUxIv2oKCalT8N4WBytL5ALQr77jXRA='
    ),
    UserModel(
        name: 'Shreya',
      url: 'https://media.gettyimages.com/id/589090389/photo/businesswoman-using-laptop-in-office.jpg?s=612x612&w=0&k=20&c=oNGwGOq3SGCGIXwjcmKJcaUvXjckpJQFoB2_EyZD1LM='
    ),
    UserModel(
        name: 'Sachin',
      url: 'https://media.gettyimages.com/id/1427847593/photo/multiracial-portuguese-jamaican-mid-adult-businessman-with-beard-standing-smiling-at-desk.jpg?s=612x612&w=0&k=20&c=bqV4bmUMxu_5riEadOAohGH-Yqh_JPJPzTG-gF4IUfA='
    ),
    UserModel(
        name: 'Sam',
      url: 'https://media.gettyimages.com/id/1320686310/photo/businessman-working-from-home-office.jpg?s=612x612&w=0&k=20&c=IW9zU8v1kuErmKwj8DePeWI1Aw8oOhMgYQpzCYq24Rk='
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                  color: Color(0xFFeff0f4),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Align(
                      alignment: Alignment.centerRight,
                      child: Icon(Icons.notifications)),
                  const Row(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 32,
                          backgroundImage: NetworkImage(
                            'https://image.shutterstock.com/display_pic_with_logo/818215/515426818/stock-photo-single-calm-young-indian-woman-in-blue-blouse-and-long-hair-holding-pencil-in-hand-while-seated-at-515426818.jpg',
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(
                            text: 'Hi Vanessa',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          TextWidget(
                            text: "Here's your spending dashboard",
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,

                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Spacer(),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextWidget(
                                text: '204.5',
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                              ),
                              TextWidget(
                                text: 'Your Balance',
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                          const Spacer(),
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            width: 2,
                            color: Colors.grey,
                          ),
                          const Spacer(),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  TextWidget(
                                      text: '30',
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.blue),
                                  Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.blue,
                                  )
                                ],
                              ),
                              TextWidget(
                                text: 'Last days',
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: TextWidget(
                      text: 'Send Again',
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                        itemCount: userList.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return  Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 40,
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                    radius: 37,
                                    backgroundImage: NetworkImage(userList[index].url ??''),
                                  ),
                                ),
                                TextWidget(
                                  text: userList[index].name??'',
                                  color: Colors.grey,
                                )
                              ],
                            ),
                          );
                        }),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                  color: const Color(0xFFeff0f4),
                  borderRadius: BorderRadius.circular(6)),
              child: const TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search Transactions',
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.blue,
                      size: 35,
                    )),
              ),
            ),
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextWidget(
                              text: 'Your Activity',
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                            ),
                            Icon(
                              IconData(0xef57, fontFamily: 'MaterialIcons'),
                              color: Colors.blue,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 13,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextWidget(
                              text: 'Apple Macbook Pro 16 - Silver',
                              fontSize: 16,
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                            ),
                            TextWidget(
                                text: '3,234.04',
                                fontSize: 16,
                                color: Colors.grey,
                                fontWeight: FontWeight.w400),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget(
                                  text: 'App Store',
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                TextWidget(
                                  text: 'Return Time Remaining 2 Weeks',
                                  fontSize: 16,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                ),
                                TextWidget(
                                  text: '1342 Colorado Street, Suit 32 - 92003',
                                  fontSize: 16,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: 1,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
