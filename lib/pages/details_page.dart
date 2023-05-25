import 'package:animation_assignment/utilts/dimension.dart';
import 'package:flutter/material.dart';
import 'package:neumorphic_button/neumorphic_button.dart';

import '../utilts/string.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            clipBehavior: Clip.antiAlias,
            // fit: StackFit.loose,
            children: [
              Container(
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      child: Image.network(
                        "https://thumbs.dreamstime.com/b/young-pretty-white-caucasian-girl-problem-skin-blue-jacket-glasses-opposite-modern-brown-background-street-181823283.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      width: MediaQuery.of(context).size.width,
                      top: 10.0,
                      left: 0,
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () => Navigator.pop(context),
                            child: const Icon(
                              Icons.chevron_left,
                              color: Colors.white,
                              size: margin30,
                            ),
                          ),
                          const Spacer(),
                          Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                            size: margin30,
                          ),
                          Icon(
                            Icons.share,
                            color: Colors.white,
                            size: margin30,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                top: 200,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      color: Colors.white),
                  child: Column(
                    children: [
                      Text("Outfit Ideas"),
                      Text(
                        "Modern Blue Jacket",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text("\$ 19,39"),
                      Row(
                        children: [
                          Text("Description"),
                          Spacer(),
                          Container(
                            child: Icon(
                              Icons.keyboard_arrow_up,
                              size: margin40,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Text(textBody),
                      Row(
                        children: [Text(sizeYourSize), Text(sizeGuide)],
                      ),
                      Center(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Spacer(),
                            SizeButton(
                              onChange: () => print("hello world"),
                              backgroundColor: Colors.white70,
                              textColor: Colors.grey,
                              text: "S",
                            ),
                            const Spacer(),
                            SizeButton(
                              onChange: () => print("hello world"),
                              backgroundColor: Colors.white70,
                              textColor: Colors.grey,
                              text: "M",
                            ),
                            const Spacer(),
                            SizeButton(
                              onChange: () => print("hello world"),
                              backgroundColor: Colors.white70,
                              textColor: Colors.grey,
                              text: "L",
                            ),
                            const Spacer(),
                            SizeButton(
                              onChange: () => print("hello world"),
                              backgroundColor: Colors.white70,
                              textColor: Colors.grey,
                              text: "XL",
                            ),
                            const Spacer(),
                            SizeButton(
                              onChange: () => print("hello world"),
                              backgroundColor: Colors.white70,
                              textColor: Colors.grey,
                              text: "XXL",
                            ),
                            const Spacer(),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SizeButton extends StatelessWidget {
  final Function() onChange;
  final Color backgroundColor;
  final Color textColor;
  final String text;
  const SizeButton(
      {super.key,
      required this.onChange,
      required this.backgroundColor,
      required this.textColor,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      width: 55,
      height: 55,
      backgroundColor: backgroundColor,
      borderRadius: 12,
      bottomRightShadowBlurRadius: 15,
      bottomRightShadowSpreadRadius: 1,
      borderWidth: 2,
      topLeftShadowBlurRadius: 15,
      topLeftShadowSpreadRadius: 1,
      topLeftShadowColor: Colors.white,
      bottomRightShadowColor: Colors.grey.shade500,
      onTap: onChange,
      child: Center(
          child: Text(
        text,
        style: TextStyle(color: textColor, fontSize: 15),
      )),
    );
  }
}
