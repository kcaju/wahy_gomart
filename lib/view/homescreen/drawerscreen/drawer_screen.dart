import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Go",
                        style: TextStyle(
                            color: Colors.orange,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "mart",
                        style: TextStyle(
                            color: Color(0xFF03AC13),
                            fontSize: 32,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  IconButton(
                    icon: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.pink.shade50,
                      child: Icon(
                        Icons.close,
                        color: Colors.red,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "About Us",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Explain to you how all this mistaken denouncing pleasure and praising pain was born and we will give you a complete account of the system, and expound the actual teachings.",
                style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 16,
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "Mistaken denouncing pleasure and praising pain was born and we will give you complete account of the system expound.",
                style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 16,
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                // height: 40,
                width: 100,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                decoration: BoxDecoration(
                    color: Color(0xFF03AC13),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    "About Us",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Contact Info",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "LetterKenny,Co.Donegal,Ireland",
                style: TextStyle(color: Colors.grey.shade700, fontSize: 14),
              ),
              Text(
                "+353 (74) 920 2265",
                style: TextStyle(color: Color(0xFF03AC13), fontSize: 14),
              ),
              Text(
                "info@gomart.ie",
                style: TextStyle(color: Color(0xFF03AC13), fontSize: 14),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Container(
                    child: Image.asset(
                      "assets/png/fb_logo.png",
                      height: 20,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.grey.shade200)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: Image.asset(
                      "assets/png/instagram.png",
                      height: 20,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.grey.shade200)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: Image.asset(
                      "assets/png/tiktok.png",
                      height: 20,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.grey.shade200)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: Image.asset(
                      "assets/png/twitter.png",
                      height: 20,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.grey.shade200)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: Image.asset(
                      "assets/png/youtube.png",
                      height: 20,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.grey.shade200)),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
