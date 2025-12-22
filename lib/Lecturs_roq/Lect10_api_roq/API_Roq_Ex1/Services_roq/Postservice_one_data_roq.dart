import 'package:http/http.dart' as http;
import 'dart:convert';



import '../Model_roq/Post_one_model_roq.dart';

class Post_Service_One_Roq {
  final String apiurl_roq = "https://jsonplaceholder.typicode.com/posts/1";

  //Future<Post_Roq> fetch_Multi_Data_roq() async
  Future fetch_One_Data_roq() async
  {
    http.Response res_roq = await http.get(Uri.parse(apiurl_roq));
    if (res_roq.statusCode == 200) {
      String data_roq = res_roq.body;
      var  jsonData_roq = jsonDecode(data_roq);
      Post_One_Roq One_post_roq = Post_One_Roq.fromjson_constr_roq(jsonData_roq);
      return One_post_roq;
    }
    else
      print("StatusCode =${res_roq.statusCode}");
  }
}
