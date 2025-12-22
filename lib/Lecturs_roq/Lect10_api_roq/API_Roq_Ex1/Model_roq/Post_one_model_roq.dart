import 'package:flutter/foundation.dart';

class Post_One_Roq {
  final int? userId;
  final int? id;
  final String? title;
  final String? body;

  Post_One_Roq({
   @required this.userId,
    @required  this.id,
    @required this.title,
    @required this.body});
  /////////////////////////// Special Constructure
  factory Post_One_Roq.fromjson_constr_roq(Map<String,dynamic>jsonData_roq)
  {
    return Post_One_Roq(
      userId: jsonData_roq['userId'],
      id:jsonData_roq['id'],
      title: jsonData_roq['title'],
      body:jsonData_roq['body'],
    );
  }
}
/*
Post_Roq obj_roq=Post_Roq.fromjson({
  "userId": 1,
  "id": 1,
  "title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
  "body": "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"
});*/
