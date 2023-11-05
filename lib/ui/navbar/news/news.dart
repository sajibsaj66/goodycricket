import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get_time_ago/get_time_ago.dart';
import 'package:goodycricket/model/news_model.dart';
import 'package:goodycricket/ui/navbar/news/news_deatils.dart';
import 'package:goodycricket/ui/widget/my_style.dart';
import 'package:http/http.dart' as http;
class News extends StatefulWidget {
  const News({super.key});

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
 late String image;
  late String title;
  late String description;
 late String author;
 getData()async{
    var response = await http.get(Uri.parse('https://newsapi.org/v2/top-headlines?country=in&category=sports&apiKey=ac1175a7c21449d8a3e3a6b52dfaddd8'),);
    if( response.statusCode == 200){
      var data = jsonDecode(response.body);
      return NewsModel.fromJson(data);
    }
  }
 
  @override
  // void initState() {
    
  //  
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      appBar: AppBar(
        backgroundColor: Colors.green.shade600,
        title: myStyle('News', Colors.white, 22, FontWeight.w700),
      ),
      body: FutureBuilder(
        future: getData(),
        builder: (context,AsyncSnapshot<dynamic>snapshot){
          if(!snapshot.hasData){
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                else{
                  return ListView.builder(
                    itemCount: snapshot.data!.articles!.length,
                    itemBuilder: (_, index){
                        return InkWell(
                          onTap: (){
                            setState(() {
                              image = snapshot.data.articles[index].urlToImage.toString();
                              title = snapshot.data!.articles![index].title.toString();
                              description = snapshot.data!.articles![index].description.toString();
                              author = snapshot.data!.articles![index].author;
                            });
                           
                            Navigator.push(context, MaterialPageRoute(builder: (_)=> NewsDeatils(
                              imageUrl: image, title: title, description: description, author: author)));
                          },
                          child: ListTile(
                              title: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: NetworkImage(snapshot.data.articles[index].urlToImage.toString()))
                                    ),
                                  ),
                                  Expanded(child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(snapshot.data!.articles![index].title.toString(), maxLines: 2, style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                        ),),
                                        const SizedBox(height: 5,),
                                        // Text((DateTime.parse(snapshot.data!.articles![index].publishedAt.toString())).toString()),
                                        Text(GetTimeAgo.parse(DateTime.parse(snapshot.data!.articles![index].publishedAt.toString()))),
                                        // Text(snapshot.data!.articles![index].publishedAt.toString(), maxLines: 1,), 
                                      ],
                                    ),
                                  )),
                                ],
                              ),
                              subtitle: Text('${snapshot.data!.articles![index].description}....See More', maxLines: 3, style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),),
                          ),
                        );
                  });
                }
      })
    );
  }
}