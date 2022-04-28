import 'dart:convert';

import '../model/model.dart';
import 'package:http/http.dart' as http;

Future getModel() async {
  var url = 'https://dog.ceo/api/breeds/image/random';

  var response = await http.get(Uri.parse(url));
  if(response.statusCode==200){
    return ImageModel.fromJson(json.decode(response.body));
  }
}
