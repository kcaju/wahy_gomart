import 'package:carousel_slider/carousel_slider.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:wahy_gomart/dummy_db.dart';
import 'package:wahy_gomart/view/homescreen/drawerscreen/drawer_screen.dart';
import 'package:wahy_gomart/view/homescreen/widgets/category_popup.dart';
import 'package:wahy_gomart/view/homescreen/widgets/header_tab.dart';
import 'package:wahy_gomart/view/homescreen/widgets/new_and_organic_items_card.dart';
import 'package:wahy_gomart/view/homescreen/widgets/shop_and_about_button.dart';
import 'package:wahy_gomart/view/homescreen/widgets/topoffer_card.dart';
import 'package:wahy_gomart/view/homescreen/widgets/trendingproducts_card.dart';
import 'package:wahy_gomart/view/sign_in_screen/signin_screen.dart';
import 'package:wahy_gomart/view/signup_screen/signup_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
            HeaderTab(), //header part
            SizedBox(
              height: 10,
            ),
            //main column

            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 80,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          //gomart heading
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Gomart",
                                  style: TextStyle(
                                      color: Color(0xFF03AC13),
                                      fontSize: 110,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "Online Fresh",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Vegetables",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "Assertively target market-driven intellectual capital with worldwide human capital holistic.",
                                  style: TextStyle(
                                      color: Colors.grey.shade700,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    ShopAndAboutButton(
                                        text: "Shop Now",
                                        buttonColor: Colors.orange),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    ShopAndAboutButton(
                                        text: "About Us",
                                        buttonColor: Color(0xFF03AC13)),
                                  ],
                                )
                              ],
                            ),
                          ),
                          //changing image
                          Expanded(
                            child: Image.asset(
                              "assets/png/vegbag.png",
                              height: 400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      //top categories
                      Stack(
                        children: [
                          SizedBox(
                            height: 300,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 25, vertical: 40),
                            child: CarouselSlider(
                              items: List.generate(
                                4,
                                (index) {
                                  return SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: List.generate(
                                        5,
                                        (index) {
                                          return Padding(
                                            padding: const EdgeInsets.only(
                                                right: 15),
                                            child: Container(
                                              width: 250,
                                              padding: EdgeInsets.all(20),
                                              child: Column(
                                                children: [
                                                  Container(
                                                    padding: EdgeInsets.all(8),
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      border: Border.all(
                                                          color: Colors.green,
                                                          width: 2),
                                                    ),
                                                    child: CircleAvatar(
                                                      radius: 70,
                                                      backgroundImage: AssetImage(
                                                          "assets/png/vegbag.png"),
                                                    ),
                                                  ),
                                                  Text(
                                                    "Vegetables",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ],
                                              ),
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: Colors.grey.shade300,
                                                  ),
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  );
                                },
                              ),
                              options: CarouselOptions(
                                height: 240,
                                autoPlay: true,
                                autoPlayInterval: Duration(seconds: 5),
                                // aspectRatio: 2.0,
                                viewportFraction: 1.0,
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.grey.shade300,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            left: 0,
                            right: 0,
                            child: Text(
                              "Our Top Category",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      //most popular brnads
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "The Most Popular Brands",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            CarouselSlider(
                              items: List.generate(
                                4,
                                (index) {
                                  return SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: List.generate(
                                        5,
                                        (index) {
                                          return Padding(
                                            padding: const EdgeInsets.only(
                                                right: 15),
                                            child: Container(
                                              width: 250,
                                              padding: EdgeInsets.all(20),
                                              child: Image.asset(
                                                "assets/png/dh.png",
                                              ),
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: Colors.grey.shade300,
                                                  ),
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  );
                                },
                              ),
                              options: CarouselOptions(
                                height: 240,
                                autoPlay: true,
                                autoPlayInterval: Duration(seconds: 5),
                                // aspectRatio: 2.0,
                                viewportFraction: 1.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      //top trending products
                      Text(
                        "Top Trending Products",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      CarouselSlider(
                        items: List.generate(
                          4,
                          (index) {
                            return SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: List.generate(
                                  5,
                                  (index) {
                                    return Padding(
                                      padding: const EdgeInsets.only(right: 15),
                                      child: TrendingproductsCard(
                                          count: "9",
                                          url:
                                              "https://rukminim2.flixcart.com/image/720/864/l1nwnm80/spice-masala/m/h/z/100-sambar-powder-1-pouch-kitchen-treasures-powder-original-imagd6knzpdyhnwp.jpeg?q=60&crop=false",
                                          title: "Fresh Oragnic",
                                          name: "Sambar Powder",
                                          oldRate: "\$ 3.55",
                                          newRate: "\$ 3.69"),
                                    );
                                  },
                                ),
                              ),
                            );
                          },
                        ),
                        options: CarouselOptions(
                          height: 570,
                          autoPlay: true,
                          autoPlayInterval: Duration(seconds: 5),
                          // aspectRatio: 2.0,
                          viewportFraction: 1.0,
                        ),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      //fresh vegetables
                      Text(
                        "Fresh Vegetables",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      CarouselSlider(
                        items: List.generate(
                          4,
                          (index) {
                            return SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: List.generate(
                                  5,
                                  (index) {
                                    return Padding(
                                      padding: const EdgeInsets.only(right: 15),
                                      child: TrendingproductsCard(
                                          url:
                                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdxHhS9OGZcFxxbP5-0Gfb-DMs3QKi9QaGRw&s",
                                          title: "Fresh Organic",
                                          name: "Brinjal",
                                          oldRate: "\$ 2.5",
                                          newRate: "\$ 3.08",
                                          count: "10"),
                                    );
                                  },
                                ),
                              ),
                            );
                          },
                        ),
                        options: CarouselOptions(
                          height: 570,
                          autoPlay: true,
                          autoPlayInterval: Duration(seconds: 5),
                          // aspectRatio: 2.0,
                          viewportFraction: 1.0,
                        ),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      //fresh meats
                      Text(
                        "Fresh Meats",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      CarouselSlider(
                        items: List.generate(
                          4,
                          (index) {
                            return SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: List.generate(
                                  5,
                                  (index) {
                                    return Padding(
                                        padding:
                                            const EdgeInsets.only(right: 15),
                                        child: TrendingproductsCard(
                                            url:
                                                "https://cdn.pixabay.com/photo/2010/12/10/08/chicken-1140_1280.jpg",
                                            title: "Fresh Organic",
                                            name: "Chicken",
                                            oldRate: "\$ 5.5",
                                            newRate: "\$ 6.77",
                                            count: "18"));
                                  },
                                ),
                              ),
                            );
                          },
                        ),
                        options: CarouselOptions(
                          height: 570,
                          autoPlay: true,
                          autoPlayInterval: Duration(seconds: 5),
                          // aspectRatio: 2.0,
                          viewportFraction: 1.0,
                        ),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      //top & weekly offer
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(
                            DummyDb.items.length,
                            (index) {
                              return Padding(
                                  padding: const EdgeInsets.only(right: 25),
                                  child: TopofferCard(
                                      offer: DummyDb.items[index]['offer'],
                                      url: DummyDb.items[index]['image'],
                                      color: DummyDb.items[index]['color']));
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      //weekly best deals
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 50),
                                  height: 450,
                                  width: 400,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "100% Oraginc Vegetables",
                                        style: TextStyle(
                                            color: Colors.orange,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Vegetable",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Fresh & Healthy",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        "None",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      //shopnow button
                                      ShopAndAboutButton(
                                          isWidth: true,
                                          text: "Shop Now",
                                          buttonColor: Color(0xFF03AC13)),
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.greenAccent,
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                Positioned(
                                    bottom: 0,
                                    right: 0,
                                    left: 0,
                                    child: Image.asset(
                                      "assets/png/vegie.png",
                                    ))
                              ],
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            DottedBorder(
                                strokeWidth: 2.0,
                                strokeCap: StrokeCap.butt,
                                radius: Radius.circular(20),
                                color: Colors.orange,
                                child: Container(
                                  width: 900,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 8),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Weekly Best Deals",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8),
                                        child: Row(
                                          children: List.generate(
                                            4,
                                            (index) {
                                              return Padding(
                                                padding:
                                                    const EdgeInsets.all(5.0),
                                                child: Container(
                                                  padding: EdgeInsets.all(10),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                      border: Border.all(
                                                          color:
                                                              Colors.orange)),
                                                  child: Column(
                                                    children: [
                                                      Text(
                                                        "00",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 16),
                                                      ),
                                                      Text(
                                                        "Days",
                                                        style: TextStyle(
                                                            color: Colors.grey,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 14),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      //dum biriyani ad
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 50),
                              child: //shopnow button
                                  Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ShopAndAboutButton(
                                    text: "Shop Now",
                                    buttonColor: Colors.orange,
                                    isWidth: true,
                                  ),
                                ],
                              ),
                              height: 320,
                              width: 400,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRp-bMTYWe_eXzepxjrftkRxy8BWGBqNdlrUA&s")),
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          //ads box
                          Container(
                            height: 320,
                            width: 500,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade400),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://m.media-amazon.com/images/I/516Z+cZy+vL._AC_UF1000,1000_QL80_.jpg")),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ],
                      ),
                      //what our clients say
                      SizedBox(
                        height: 80,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //new products
                          Expanded(
                            child: Container(
                              width: 410,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 20),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "New Products",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Spacer(),
                                      Row(
                                        children: [
                                          Text(
                                            "View More",
                                            style: TextStyle(
                                                color: Colors.orange,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Icon(
                                            Icons.arrow_forward,
                                            color: Colors.orange,
                                            size: 20,
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  ListView.separated(
                                      shrinkWrap: true,
                                      itemBuilder: (context, index) {
                                        return NewAndOrganicItemsCard(
                                            url: DummyDb.products[index]
                                                ['image'],
                                            title: DummyDb.products[index]
                                                ['name'],
                                            rate: DummyDb.products[index]
                                                ['rate']);
                                      },
                                      separatorBuilder: (context, index) =>
                                          SizedBox(
                                            height: 8,
                                          ),
                                      itemCount: DummyDb.products.length)
                                ],
                              ),
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.grey.shade200)),
                            ),
                          ),
                          //organic best seller
                          Expanded(
                            child: Container(
                              width: 410,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 20),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "Organic Bestseller",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Spacer(),
                                      Row(
                                        children: [
                                          Text(
                                            "View More",
                                            style: TextStyle(
                                                color: Colors.orange,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Icon(
                                            Icons.arrow_forward,
                                            color: Colors.orange,
                                            size: 20,
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  ListView.separated(
                                      shrinkWrap: true,
                                      itemBuilder: (context, index) {
                                        return NewAndOrganicItemsCard(
                                            url: DummyDb.bestseller[index]
                                                ['image'],
                                            title: DummyDb.bestseller[index]
                                                ['name'],
                                            rate: DummyDb.bestseller[index]
                                                ['rate']);
                                      },
                                      separatorBuilder: (context, index) =>
                                          SizedBox(
                                            height: 8,
                                          ),
                                      itemCount: DummyDb.bestseller.length)
                                ],
                              ),
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.grey.shade200)),
                            ),
                          ),
                          //fresh spice
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: 350,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          "Fresh & Organic Spice",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 26,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: 40,
                                              width: 80,
                                              child: Center(
                                                child: Text(
                                                  "Hot",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                  color: Colors.red,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              "30% Off",
                                              style: TextStyle(
                                                  color: Colors.red,
                                                  fontSize: 30,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Shop Now",
                                              style: TextStyle(
                                                  color: Colors.green,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Icon(
                                              Icons.arrow_forward,
                                              size: 20,
                                              color: Colors.green,
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Container(
                                          height: 150,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                              color: Colors.amber,
                                              image: DecorationImage(
                                                  fit: BoxFit.fill,
                                                  image: NetworkImage(
                                                      "https://www.thespicehouse.com/cdn/shop/articles/Tea_Spice_Blog_720x.jpg?v=1646086177")),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                        )
                                      ],
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Colors.grey.shade200),
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                //product count
                                Container(
                                  width: 350,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 70,
                                            width: 60,
                                            child: Image.asset(
                                                "assets/png/box.png"),
                                            decoration: BoxDecoration(
                                                color: Colors.pink.shade50,
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "6k+",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 25,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                "Total Products",
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 70,
                                            width: 60,
                                            child: Image.asset(
                                                "assets/png/like.png"),
                                            decoration: BoxDecoration(
                                                color: Colors.green.shade100,
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "1M+",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 25,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                "Customer Satisfaction",
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey.shade200),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 80,
                      ),
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
            ),
          ],
        ),
      ),
    );
  }
}
