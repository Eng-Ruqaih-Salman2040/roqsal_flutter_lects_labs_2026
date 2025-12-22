
import 'package:flutter/foundation.dart';
class Posts_Multi_Roq
{
  final List<dynamic>? postList_roq;

  Posts_Multi_Roq({this.postList_roq});
  factory Posts_Multi_Roq.fromjson(Map<String,dynamic>json_M_Data_roq)
  {
    return Posts_Multi_Roq(postList_roq: json_M_Data_roq['postList_roq'],);
  }

}