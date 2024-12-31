import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:wahy_gomart/view/homescreen/drawerscreen/drawer_screen.dart';
import 'package:wahy_gomart/view/homescreen/widgets/header_tab.dart';
import 'package:wahy_gomart/view/homescreen/widgets/trendingproducts_card.dart';

class ShopbycategoryScreen extends StatefulWidget {
  const ShopbycategoryScreen({super.key});

  @override
  State<ShopbycategoryScreen> createState() => _ShopbycategoryScreenState();
}

class _ShopbycategoryScreenState extends State<ShopbycategoryScreen> {
  String? selectedValue;
  List brands = [
    "Eastern Condiments",
    "Nirapara",
    "Kitchen Treasures",
    "Double Horse",
    "Melam",
    "Priyom",
    "Amul",
    "Nestle",
    "Saras",
    "Tasty Nibbles",
    "Brahmins",
    "Aashirvad",
    "Viswas",
    "East End",
    "Nirmal",
    "Mayil",
    "Delicious Delight",
    "Periyar",
    "Daily Delight",
    "India Gate",
    "Heera",
    "Nithya",
    "MDH",
    "Aachi",
    "Jacme",
    "Pavizham"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.orange,
        child: Icon(
          Icons.pan_tool_alt_outlined,
          color: Colors.white,
        ),
      ),
      endDrawer: DrawerScreen(),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            HeaderTab(),
            //main body
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 80),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Center(
                        child: Text(
                          "Shop by Category",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 35),
                        ),
                      ),
                      Center(
                        child: Text(
                          "Home >> Page >> Category",
                          style: TextStyle(
                              color: Colors.grey.shade500,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        height: 100,
                      ),

                      Row(
                        children: [
                          //side box
                          Container(
                            width: 300,
                            child: Column(
                              children: [
                                //search now
                                Row(
                                  children: [
                                    Text(
                                      "Search Now",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    //progress indicator

                                    Expanded(
                                      child: LinearPercentIndicator(
                                        lineHeight: 4.0,
                                        percent: 0.2,
                                        backgroundColor: Colors.grey.shade300,
                                        progressColor: Colors.orange,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                //search field
                                Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                          color: Colors.grey.shade200),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                              contentPadding:
                                                  EdgeInsets.symmetric(
                                                      horizontal: 10,
                                                      vertical: 5),
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
                                                bottomRight:
                                                    Radius.circular(5))),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                //countries
                                Row(
                                  children: [
                                    Text(
                                      "Countries",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    //progress indicator

                                    Expanded(
                                      child: LinearPercentIndicator(
                                        lineHeight: 4.0,
                                        percent: 0.2,
                                        backgroundColor: Colors.grey.shade300,
                                        progressColor: Colors.orange,
                                      ),
                                    ),
                                  ],
                                ),
                                //brands
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Brands",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    //progress indicator

                                    Expanded(
                                      child: LinearPercentIndicator(
                                        lineHeight: 4.0,
                                        percent: 0.2,
                                        backgroundColor: Colors.grey.shade300,
                                        progressColor: Colors.orange,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                //list of brands
                                ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: brands.length,
                                  itemBuilder: (context, index) {
                                    return Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          brands[index],
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 16),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        )
                                      ],
                                    );
                                  },
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                //filter
                                Row(
                                  children: [
                                    Text(
                                      "Filter by Price",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    //progress indicator

                                    Expanded(
                                      child: LinearPercentIndicator(
                                        lineHeight: 4.0,
                                        percent: 0.2,
                                        backgroundColor: Colors.grey.shade300,
                                        progressColor: Colors.orange,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                //textfields
                                Row(
                                  children: [
                                    Expanded(
                                        child: TextField(
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder()),
                                    )),
                                    Text(
                                      "-",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25),
                                    ),
                                    Expanded(
                                        child: TextField(
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder()),
                                    )),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                //two buttons
                                Row(
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 80,
                                      child: Center(
                                        child: Text(
                                          "Filter",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Color(0xFF03AC13)),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 30,
                                      width: 50,
                                      child: Center(
                                        child: Text(
                                          "All",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Color(0xFF03AC13)),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                //best selling
                                Row(
                                  children: [
                                    Text(
                                      "Best Selling",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    //progress indicator

                                    Expanded(
                                      child: LinearPercentIndicator(
                                        lineHeight: 4.0,
                                        percent: 0.2,
                                        backgroundColor: Colors.grey.shade300,
                                        progressColor: Colors.orange,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 15),
                            decoration: BoxDecoration(
                                color: Colors.white70,
                                border: Border.all(color: Colors.grey.shade200),
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 80,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 15),
                                  decoration: BoxDecoration(
                                    color: Colors.white70,
                                    border:
                                        Border.all(color: Colors.grey.shade200),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Showing 1-6 of 5 results",
                                        style: TextStyle(
                                          color: Colors.grey.shade700,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        "Sort Price By:",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                      SizedBox(width: 8),
                                      Container(
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 5),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.grey.shade400),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: DropdownButton<String>(
                                          hint: Text(
                                            "Select Any Option",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 14),
                                          ),
                                          value:
                                              selectedValue, // Define this variable to hold the selected value
                                          underline:
                                              SizedBox(), // Removes the default underline
                                          items: [
                                            DropdownMenuItem(
                                              value: "recent",
                                              child: Text(
                                                "Recent Products",
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 14),
                                              ),
                                            ),
                                            DropdownMenuItem(
                                              value: "highToLow",
                                              child: Text("High to Low",
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 14)),
                                            ),
                                            DropdownMenuItem(
                                              value: "lowToHigh",
                                              child: Text("Low to High",
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 14)),
                                            ),
                                          ],
                                          onChanged: (String? newValue) {
                                            setState(() {
                                              selectedValue = newValue!;
                                            });
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                //list of products

                                GridView.builder(
                                  itemCount: 5,
                                  shrinkWrap: true,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 3,
                                          crossAxisSpacing: 10,
                                          mainAxisSpacing: 10,
                                          mainAxisExtent: 600),
                                  itemBuilder: (context, index) {
                                    return TrendingproductsCard(
                                        isProducts: true,
                                        url:
                                            "https://cdn.pixabay.com/photo/2010/12/10/08/chicken-1140_1280.jpg",
                                        title: "Fresh Organic",
                                        name: "Chicken",
                                        oldRate: "\$ 5.5",
                                        newRate: "\$ 6.77",
                                        count: "18");
                                  },
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      //footer
                      Container(
                        width: double.infinity,
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 35),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Subscribe to the GOMART",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "New Arrivals",
                                    style: TextStyle(
                                        color: Colors.orange,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "& Other information.",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                width: 500,
                                height: 55,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                            hintText: "Enter Email Address",
                                            fillColor: Colors.white,
                                            filled: true,
                                            border: InputBorder.none),
                                      ),
                                    ),
                                    Container(
                                      width: 150,
                                      child: Center(
                                        child: Text(
                                          "Subscribe Now",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(5),
                                              bottomRight: Radius.circular(5))),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Divider(
                                color: Colors.white.withAlpha(80),
                              ),
                              SizedBox(
                                height: 100,
                              ),
                              Divider(
                                color: Colors.white.withAlpha(80),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: Row(
                                  children: [
                                    Text(
                                      "All rights reserved Made by",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "GoMart",
                                      style: TextStyle(
                                          color: Colors.orange,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                    SizedBox(
                                      width: 300,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Go",
                                          style: TextStyle(
                                              color: Colors.orange,
                                              fontSize: 40,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "mart",
                                          style: TextStyle(
                                              color: Color(0xFF03AC13),
                                              fontSize: 40,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
