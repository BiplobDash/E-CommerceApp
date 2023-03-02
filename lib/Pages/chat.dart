
import 'package:first_project/helper/comment_helper.dart';
import 'package:first_project/model/comment.dart';
import 'package:flutter/material.dart';

class Chat extends StatefulWidget {

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  List<Comment>? comments;
  bool is_loaded = false;

  getData() async{
    comments = await commentHelper().getComments();
    setState(() {
      is_loaded = true;
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Rest API",
          style: TextStyle(fontSize: 30,
          fontWeight: FontWeight.w600),
        ),
      ),
      body: Visibility(
        visible: is_loaded,
        replacement: Center(
          child: CircularProgressIndicator(),
        ),
        child: ListView.builder(
          itemCount: comments?.length??0,
            itemBuilder: (_,index){
            return Card(
              child: ListTile(
                title: Text(comments![index].email),
                subtitle: Text(comments![index].body),
              ),
            );
            }),
      ),

    );
  }
}