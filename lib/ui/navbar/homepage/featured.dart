import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:goodycricket/model/score_model.dart';
import 'package:http/http.dart' as http;

class Featured extends StatefulWidget {
  const Featured({super.key});

  @override
  State<Featured> createState() => _FeaturedState();
}

class _FeaturedState extends State<Featured> {
   getData()async{
    var response = await http.get(Uri.parse('https://api.cricapi.com/v1/currentMatches?apikey=73b32e5e-d38c-4e68-892e-40bdbc4796dc&offset=0'),);
    if( response.statusCode == 200){
      var data = jsonDecode(response.body);
      return ScoreModel.fromJson(data);
    }
  
  }
  // ScoreModel? scoreModel;
  // // List<Exercises> myList= [];
  //  getData() async {
  //   var response = await http.get(Uri.parse(
  //       "https://api.cricapi.com/v1/currentMatches?apikey=73b32e5e-d38c-4e68-892e-40bdbc4796dc&offset=0"));
  //   var reponseDate = jsonDecode(response.body);
  //   scoreModel = ScoreModel.fromJson(reponseDate);
  //    print(reponseDate);
  //   setState(() {
      
  //   });
  // }
  @override
  void initState() {
    // getData();
   
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('dfghjh'),
      ),
      // body: SingleChildScrollView(
      //   child: FutureBuilder<ScoreModel>(
      //     future: getData(),
      //     builder: (context, snapshot){
      //       if(!snapshot.hasData){
      //         return Center(child: CircularProgressIndicator());
      //       }else{
      //         return ListView.builder(
      //           itemCount: scoreModel!.data!.length,
      //           itemBuilder: (_, index){
      //         return Container(
      //           margin: EdgeInsets.only(bottom: 10),
      //           height: 200,
      //           width: double.infinity,
      //           color: Colors.red,
      //         );
      //       });
      //       }
      //   }),
      // )
    );
  }
}