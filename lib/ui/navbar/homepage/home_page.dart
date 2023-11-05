import 'package:flutter/material.dart';
import 'package:goodycricket/ui/navbar/homepage/featured.dart';
import 'package:goodycricket/ui/navbar/homepage/goodyplus.dart';
import 'package:goodycricket/ui/widget/my_style.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  List<Widget> page = [const Featured(), const GoodyPlus()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.green.shade700),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: 8,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Goody',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 22,
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 70,
                        decoration: BoxDecoration(
                          // color: Colors.red,
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(color: Colors.white),
                        ),
                        child: const Center(
                          child: Text(
                            'Log In',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                        child: InkWell(
                      autofocus: false,
                      onTap: () {
                        setState(() {
                          index = 0;
                        });
                      },
                      child: SizedBox(
                          height:40,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              myStyle(
                                  'FEATURED',
                                  index == 0 ? Colors.white : Colors.white60,
                                  16,
                                  FontWeight.w400),
                              index == 0
                                  ? Container(
                                      height: 3,
                                      color: Colors.white,
                                    )
                                  : Container(
                                      height: 3,
                                    )
                            ],
                          )),
                    )),
                    Expanded(
                      child: InkWell(
                        autofocus: false,
                        onTap: () {
                          setState(() {
                            index = 1;
                          });
                        },
                        child: SizedBox(
                          height: 40,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              myStyle(
                                  'GOODY PLUS',
                                  index == 1 ? Colors.white : Colors.white60,
                                  16,
                                  FontWeight.w400),
                              index == 1
                                  ? Container(
                                      height: 3,
                                      color: Colors.white,
                                    )
                                  : Container(
                                      height: 3,
                                    )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
              child: Container(
            child: index == 0 ? const Featured() : const GoodyPlus(),
          ))
        ],
      )),
    );
  }
}
