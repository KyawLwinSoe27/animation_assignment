import 'package:animation_assignment/utilts/dimension.dart';
import 'package:flutter/material.dart';

import '../config/app_theme.dart';

const animationTiming1 = Duration(milliseconds: 1000);
const animationTiming2 = Duration(milliseconds: 2000);

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: animationTiming1,
        color: (isDarkMode) ? Colors.black : Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              TweenAnimationBuilder(
                tween: Tween<double>(begin: 0, end: 1),
                builder: (context, double value1, child) => Opacity(
                  opacity: value1,
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: value1 * margin50,
                        left: value1 * margin30,
                        right: value1 * margin30),
                    child: child,
                  ),
                ),
                duration: animationTiming1,
                child: Row(
                  children: [
                    Image.network(
                      "https://w7.pngwing.com/pngs/340/946/png-transparent-avatar-user-computer-icons-software-developer-avatar-child-face-heroes.png",
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      width: margin10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Howdy,",style: TextStyle(color: (isDarkMode) ? Colors.white : Colors.black),),
                        SizedBox(
                          height: margin5,
                        ),
                        Text("Kyaw Lwin Soe",style: TextStyle(color: (isDarkMode) ? Colors.white : Colors.black),)
                      ],
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        setState(() {
                          isDarkMode = !isDarkMode;
                        });
                      },
                      child: Icon(
                        (isDarkMode) ? Icons.light_mode_outlined : Icons.dark_mode_outlined,
                        color: (isDarkMode) ? Colors.amber : Colors.black,
                        size: margin30,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: margin50,
              ),
              TweenAnimationBuilder(
                tween: Tween<double>(begin: 0, end: 1),
                duration: animationTiming2,
                builder: (context, double value2, child) => Opacity(
                  opacity: value2,
                  child: Padding(
                    padding: EdgeInsets.only(left: value2 * 10),
                    child: child,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: margin30),
                      child: Row(
                        children: [
                          Text(
                            "Trending for you",
                            style: (isDarkMode) ? titleThemeDark : titleTheme,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: margin10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 0),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(margin10),
                            child: Image.network(
                              "https://ae01.alicdn.com/kf/Hcaa2a60724b04f78b2708c18d709d688B.jpg_640x640q90.jpg",
                              fit: BoxFit.cover,
                              height: 250,
                              width: 320,
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: Container(
                              width: 50,
                              height: 50,
                              child: const Icon(
                                Icons.favorite_border,
                                color: Colors.red,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 20,
                            left: 20,
                            child: SizedBox(
                              width: 200,
                              child: Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "New 2020",
                                      style: TextStyle(
                                          color: Colors.pink,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    const SizedBox(
                                      height: margin10,
                                    ),
                                    Text(
                                      "Modern Outfit Collection".toUpperCase(),
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900,
                                          fontSize: 20),
                                    ),
                                    const SizedBox(
                                      height: margin10,
                                    ),
                                    Row(
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(margin30),
                                          child: Image.network(
                                            "https://w7.pngwing.com/pngs/340/946/png-transparent-avatar-user-computer-icons-software-developer-avatar-child-face-heroes.png",
                                            width: 50,
                                            height: 50,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        SizedBox(
                                          width: margin10,
                                        ),
                                        const Text(
                                          "Kyaw Lwin Soe",
                                          style: TextStyle(
                                              color: Colors.pink, fontSize: 15),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: margin50,
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: margin30),
                    child: Row(
                      children: [
                        Text(
                          "Recommended",
                          style: (isDarkMode) ? titleThemeDark : titleTheme,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: margin30,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(margin10),
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.network(
                                "https://w7.pngwing.com/pngs/323/773/png-transparent-sneakers-basketball-shoe-sportswear-nike-shoe-outdoor-shoe-running-sneakers-thumbnail.png",
                                width: 80,
                                height: 80,
                              ),
                              const SizedBox(
                                height: margin10,
                              ),
                              const Text("Shoes")
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.network(
                                "https://w7.pngwing.com/pngs/323/773/png-transparent-sneakers-basketball-shoe-sportswear-nike-shoe-outdoor-shoe-running-sneakers-thumbnail.png",
                                width: 80,
                                height: 80,
                              ),
                              const SizedBox(
                                height: margin10,
                              ),
                              const Text("Shoes")
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
