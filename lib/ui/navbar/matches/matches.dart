import 'package:flutter/material.dart';
import 'package:goodycricket/ui/navbar/matches/live.dart';
import 'package:goodycricket/ui/navbar/matches/recent.dart';
import 'package:goodycricket/ui/navbar/matches/upcoming.dart';
import 'package:goodycricket/ui/widget/my_style.dart';

class Matches extends StatefulWidget {
  const Matches({super.key});
  @override
  State<Matches> createState() => _MatchesState();
}

class _MatchesState extends State<Matches> {
  int index = 0;
  List<Widget> page = [const Live(), const Upcoming(), const Recent()];
  Widget showWidget(){
    if(index == 0){
      return const Live();
    }else if(index == 1){
     return const Upcoming();
    }else{
     return const Recent();
    }
  }
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
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: myStyle('Current Matches', Colors.white, 22, FontWeight.w700),
                  )
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
                                  'LIVE',
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
                          height:40,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              myStyle(
                                  'UPCOMING',
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
                          )),
                    )),
                    Expanded(
                      child: InkWell(
                        autofocus: false,
                        onTap: () {
                          setState(() {
                            index = 2;
                          });
                        },
                        child: SizedBox(
                          height: 40,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              myStyle(
                                  'RECENT',
                                  index == 2 ? Colors.white : Colors.white60,
                                  16,
                                  FontWeight.w400),
                              index == 2
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
            child: showWidget(),
          ))
        ],
      )),
    );
  }
}
