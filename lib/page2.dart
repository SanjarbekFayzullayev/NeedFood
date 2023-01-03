import 'package:flutter/material.dart';

class PagesTu extends StatefulWidget {
  const PagesTu({Key? key}) : super(key: key);

  @override
  State<PagesTu> createState() => _PagesTuState();
}

class _PagesTuState extends State<PagesTu> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                      children: const [
                        Icon(Icons.account_circle),
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
                          borderRadius: BorderRadius.all(Radius.circular(33)),
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
                            borderRadius: BorderRadius.all(Radius.circular(30)),
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
              margin: EdgeInsets.only(left: 24),
              child: const Text("Categories",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
            ),
            Row(children: [
              Card(child: Column(
                children: [
                  Image.asset("images/pizza.png"),
                ],

              )),
            ],)
          ],
        ),
      ),
    );
  }
}
