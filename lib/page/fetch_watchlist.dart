import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:counter_7/model/mywatchlist.dart';

Future<List<MyWatchList>> fetchWatchlist() async {
  var url = Uri.parse("https://pbp-tugas2-katalog.herokuapp.com/mywatchlist/json/");
  var response = await http.get(
    url,
    headers: {
      "Access-Control-Allow-Origin": "*",
      "Content-Type": "application/json",
    },
  );

  // response jadi JSON
  var data = jsonDecode(utf8.decode(response.bodyBytes));

  // json jadi object
  List<MyWatchList> listWatchlist = [];
  for (var d in data) {
    if (d != null) {
      listWatchlist.add(MyWatchList.fromJson(d));
    }}

  return listWatchlist;
}
