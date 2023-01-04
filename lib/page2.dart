import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';


class PagesTu extends StatefulWidget {
   PagesTu({Key? key}) : super(key: key);

  @override
  State<PagesTu> createState() => _PagesTuState();
}

class _PagesTuState extends State<PagesTu> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  color: Colors.orangeAccent,
                  height: 70,
                  width: double.infinity,
                  child: Material(
                    elevation: 12,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset("images/icon.png",width: 40,),
                            Container(
                              margin: const EdgeInsets.only(top: 24),
                              child: Row(children: const [
                               Text(
                                "Need",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "Food",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w400),
                              ), 
                            ]),)
                           
                          ],
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            margin: const EdgeInsets.only(right: 14),
                            width: 40,
                            height: 40,
                            child: const Material(
                              elevation: 12,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(33)),
                              child: Icon(Icons.search),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 16),
                  width: double.infinity,
                  height: 145,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/aa.png"),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 10, top: 30),
                        child: Column(
                          children: [
                            const Text(
                              "Paket Chese",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            const Text(
                              "    Burger komplit",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 16, top: 12),
                              width: 80,
                              height: 20,
                              child: const Material(
                                color: Colors.red,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                child: Center(
                                    child: Text(
                                  "Older now",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 24),
                  child: const Text(
                    "Categories",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: SizedBox(
                        width: 90,
                        height: 90,
                        child: Material(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(18),
                          ),
                          elevation: 14,
                          child: Column(
                            children: [
                              Image.asset(
                                "images/purgerm.png",
                                fit: BoxFit.cover,
                              ),
                              const Text(
                                "Burger",
                                style: TextStyle(fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: SizedBox(
                        width: 90,
                        height: 90,
                        child: Material(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(18),
                          ),
                          elevation: 14,
                          child: Column(
                            children: [
                              Image.asset(
                                "images/drink.png",
                                fit: BoxFit.cover,
                              ),
                              const Text(
                                "Drink",
                                style: TextStyle(fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: SizedBox(
                        width: 90,
                        height: 90,
                        child: Material(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(18),
                          ),
                          elevation: 14,
                          child: Column(
                            children: [
                              const SizedBox(height: 2),
                              Image.asset(
                                "images/pizza.png",
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(height: 4),
                              const Text(
                                "Pizza",
                                style: TextStyle(fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Container(
                  margin: const EdgeInsets.only(left: 24),
                  child: const Text(
                    "Popular Now",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  height: 210,
                  // Constrain height.
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    Container(
                      margin: const EdgeInsets.only(
                          right: 8, left: 8, top: 10, bottom: 20),
                      child: InkWell(
                        onTap: () {},
                        child: SizedBox(
                          width: 150,
                          height: 90,
                          child: Material(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(18),
                            ),
                            elevation: 10,
                            child: Column(
                              children: [
                                Image.asset(
                                  "images/burger.png",
                                  fit: BoxFit.cover,
                                ),
                                const Text(
                                  "Beef Burger",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                                const Text(
                                  "Mcdi",
                                  style: TextStyle(fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                const Text(
                                  "Rp. 20.000",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          right: 8, left: 8, top: 10, bottom: 20),
                      child: InkWell(
                        onTap: () {},
                        child: SizedBox(
                          width: 150,
                          height: 90,
                          child: Material(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(18),
                            ),
                            elevation: 10,
                            child: Column(
                              children: [
                                Image.asset(
                                  "images/pizzafutti.png",
                                  fit: BoxFit.cover,
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                const Text(
                                  "Pizza Fruit",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                                const Text(
                                  "Pijja hut",
                                  style: TextStyle(fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                const Text(
                                  "Rp. 4  0.000",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          right: 8, left: 8, top: 10, bottom: 20),
                      child: InkWell(
                        onTap: () {},
                        child: SizedBox(
                          width: 150,
                          height: 90,
                          child: Material(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(18),
                            ),
                            elevation: 10,
                            child: Column(
                              children: [
                                Image.asset(
                                  "images/sandvich.png",
                                  width: 120,
                                  fit: BoxFit.cover,
                                ),
                                const Text(
                                  "Chicken Sandwich",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                                const Text(
                                  "Mfiiy Ro",
                                  style: TextStyle(fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                const Text(
                                  "Rp. 10.000",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 24),
                  child: const Text(
                    "Recommended",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                ),
                const SizedBox(height: 4),
                SizedBox(
                  height: 245,
                  // Constrain height.
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            image: DecorationImage(
                                image: AssetImage(
                                  "images/blog.png",
                                ),
                                fit: BoxFit.cover)),
                        margin: const EdgeInsets.only(
                            right: 8, left: 26, top: 10, bottom: 20),
                        width: 220,
                        height: 90,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            image: DecorationImage(
                                image: AssetImage(
                                  "images/hamburger.png",
                                ),
                                fit: BoxFit.cover)),
                        margin: const EdgeInsets.only(
                            right: 8, left: 26, top: 10, bottom: 20),
                        width: 220,
                        height: 90,
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ],
        ),
        bottomNavigationBar: CurvedNavigationBar(
         backgroundColor: Colors.white,
          buttonBackgroundColor: Colors.orange,
          height: 50,
          items: const <Widget> [
         Icon(Icons.home_outlined,size: 46,color: Colors.grey,),
         Icon(Icons.diamond_outlined,size: 46,color: Colors.grey),
         Icon(Icons.shopping_cart,size: 46,color: Colors.grey),
         Icon(Icons.messenger_outline,size: 46,color: Colors.grey),
         Icon(Icons.account_circle,size: 46,color: Colors.grey),
          ],
          animationDuration: const Duration(
            milliseconds: 300,
          ),
          animationCurve: Curves.bounceInOut,
          onTap: (value) {


          },
        ),
      ),
    );
  }
}
