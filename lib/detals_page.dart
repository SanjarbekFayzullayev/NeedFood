import 'package:flutter/material.dart';

class DetalsPage extends StatefulWidget {
  const DetalsPage({Key? key}) : super(key: key);

  @override
  State<DetalsPage> createState() => _DetalsPageState();
}

class _DetalsPageState extends State<DetalsPage> {
  String password = "123456";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage("images/bg.png"))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      ClipPath(
                        clipper: HexagonalClipper1(),
                        child: Container(
                          height: 200,
                          color: Colors.blue,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.image),
                              Text(
                                "Need",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text(
                                "Food",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      const Text("Sing in",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 30)),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        width: 350,
                        child: TextFormField(
                            decoration: const  InputDecoration(
                              hintText: "Enter you name",
                              border: OutlineInputBorder(),
                            ),
                            validator: (value) {
                              if (value!.length < 5) {
                                return "Error type";
                              }
                            },
                            onSaved: (value) => setState(() {
                                  password = value.toString();
                                })),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const SizedBox(
                        width: 350,
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Enter you pasword",
                            hintStyle: TextStyle(color: Colors.grey),
                            labelText: "Enter you pasword",
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Padding(
                            padding: EdgeInsets.all(12),
                            child: Text("Forget password ?")),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const SizedBox(
                        width: 350,
                        height: 50,
                        child: Material(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                          color: Colors.blue,
                          child: Center(
                              child: Text(
                            "L o g i n",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          )),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 160,
                  ),
                  Column(
                    children: [
                      InkWell(onTap: () {}, child: Text("No accaunt yet ?")),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                              onTap: () {},
                              child: const Text(
                                "Sing up now",
                                style: TextStyle(color: Colors.blue),
                              )),
                          const Icon(
                            Icons.keyboard_double_arrow_right,
                            color: Colors.blue,
                          )
                        ],
                      ),
                    ],
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

class HexagonalClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var oneThirdWidth = size.aspectRatio / 10;
    var oneThirdHeight = size.height / 1.3;

    final path = Path()
      ..lineTo(0.0, oneThirdHeight)
      ..lineTo(0.0, oneThirdHeight)
      ..lineTo(size.width / 2, size.height)
      ..lineTo(size.width, oneThirdHeight)
      ..lineTo(size.width, oneThirdWidth)
      ..lineTo(size.width, oneThirdWidth)
      ..lineTo(0.0, oneThirdWidth)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

class DrawTriangle extends CustomPainter {
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }

  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
  }
}
