import 'package:flutter/material.dart';
import 'package:goodycricket/ui/navbar/navbar.dart';
import 'package:goodycricket/ui/widget/my_style.dart';
// ignore: must_be_immutable
class NewsDeatils extends StatefulWidget {
  String imageUrl;
  String title;
  String description;
  String author;
  NewsDeatils({super.key,required this.imageUrl, required this.title, required this.description, required this.author});

  @override
  State<NewsDeatils> createState() => _NewsDeatilsState();
}

class _NewsDeatilsState extends State<NewsDeatils> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
           SliverAppBar(
            snap: false,
            leading: IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>const NavBar()));
            }, icon: const Icon(Icons.arrow_back)),
            actions: [
              IconButton(onPressed: (){}, icon: const Icon(Icons.share))
            ],
              floating: false,
              expandedHeight: 160.0,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.network(widget.imageUrl, fit: BoxFit.fill,),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                myStyle(widget.title, Colors.black, 24, FontWeight.w400),
                const SizedBox(height: 10,),
                myStyle(widget.author, Colors.blue, 16, FontWeight.w400),
                 const SizedBox(height: 10,),
                Text(widget.description,),
              ],
            ),
          ),
        )
        ],
      )
    );
  }
}