import 'package:flutter/material.dart';
import 'package:wahy_gomart/view/homescreen/widgets/allproducts_screen.dart';
import 'package:wahy_gomart/view/homescreen/widgets/category_popup.dart';
import 'package:wahy_gomart/view/homescreen/widgets/homepage.dart';
import 'package:wahy_gomart/view/homescreen/widgets/quickenquiry_screen.dart';
import 'package:wahy_gomart/view/sign_in_screen/signin_screen.dart';
import 'package:wahy_gomart/view/signup_screen/signup_screen.dart';

class HeaderTab extends StatelessWidget {
  const HeaderTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 150,
        ),
        //green container
        Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 60),
          height: 80,
          color: Color(0xFF03AC13),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.email_outlined,
                size: 20,
                color: Colors.white,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "info@gomart.ie",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 15,
                child: VerticalDivider(
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.pin_drop_outlined,
                size: 20,
                color: Colors.white,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "LetterKenny,Co.Donegal,Ireland",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 15,
                child: VerticalDivider(
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "English",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 15,
                child: VerticalDivider(
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Dark",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.dark_mode,
                color: Colors.white,
                size: 20,
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
        //header tab
        Positioned(
          bottom: 40,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        Text(
                          "Go",
                          style: TextStyle(
                              color: Colors.orange,
                              fontSize: 50,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "mart",
                          style: TextStyle(
                              color: Color(0xFF03AC13),
                              fontSize: 50,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  CategoryPopup(),

                  SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Homepage(),
                          ));
                    },
                    child: Text(
                      "Home",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  PopupMenuButton<int>(
                    child: Row(
                      children: [
                        Text(
                          "Products",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    onSelected: (value) {
                      // Handle any selection if required
                      if (value == 1) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AllproductsScreen()),
                        );
                      }
                    },
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        value: 1,
                        child: Text(
                          "All Products",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                    offset: Offset(0, 50), // Adjusts the popup position
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),

                  SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => QuickenquiryScreen(),
                          ));
                    },
                    child: Text(
                      "Quick Enquiry",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  PopupMenuButton<int>(
                    icon: Icon(
                      Icons.search,
                      color: Colors.grey,
                      size: 25,
                    ),
                    onSelected: (value) {
                      // Handle any selection if required
                    },
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        value: 1,
                        child: Container(
                          width: 200,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      hintText: "Search Products..",
                                      hintStyle: TextStyle(
                                          color: Colors.grey.shade300,
                                          fontSize: 16),
                                      fillColor: Colors.white,
                                      filled: true,
                                      border: InputBorder.none),
                                ),
                              ),
                              Container(
                                width: 40,
                                height: 50,
                                child: Center(
                                  child: Icon(
                                    Icons.search,
                                    color: Colors.white,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(5),
                                        bottomRight: Radius.circular(5))),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                    offset: Offset(0, 50), // Adjusts the popup position
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),

                  SizedBox(
                    width: 15,
                  ),
                  PopupMenuButton<int>(
                    child: Icon(
                      Icons.person_outlined,
                      size: 25,
                      color: Colors.grey,
                    ),
                    onSelected: (value) {
                      // Handle any selection if required
                      if (value == 1) {
                        // Navigate to the Sign In screen
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SigninScreen()),
                        );
                      } else if (value == 2) {
                        // Navigate to the Sign Up screen
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignupScreen()),
                        );
                      }
                    },
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        value: 1,
                        child: Row(
                          children: [
                            Icon(
                              Icons.login,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Sign In",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      PopupMenuItem(
                        value: 2,
                        child: Row(
                          children: [
                            Icon(
                              Icons.login,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Sign Up",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                    offset: Offset(0, 50), // Adjusts the popup position
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),

                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.grey,
                    size: 25,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    radius: 25,
                    child: Icon(
                      Icons.phone_outlined,
                      color: Colors.orange,
                    ),
                    backgroundColor: Colors.pink.shade50,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Phone & Telephone",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  //end drawer open button
                  Builder(builder: (context) {
                    return GestureDetector(
                      onTap: () {
                        Scaffold.of(context).openEndDrawer();
                      },
                      child: Container(
                        height: 70,
                        padding: EdgeInsets.all(15),
                        child: Icon(
                          Icons.apps,
                          color: Colors.white,
                          size: 35,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    );
                  })
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
