import 'package:absensi/data/api.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';
import 'package:absensi/model/siswa.dart';
import 'dart:convert';

List<Siswa> parseJson(String response){
  final parse = json.decode(response).cast<Map<String, dynamic>>();
  return parse.map<Siswa>((json) => Siswa.fromMap(json)).toList();
}

absen(String nis) async{
//  var response = await http.get('http://192.168.2.139:8000/api/login?nis='+nis);
//  print(response.body);
//  if(response.statusCode == 200){
////    var a = json.decode(response.body);
//    return json.decode(response.body);
//  }else{
//    return '0';
//  }
Response response;
Dio dio = new Dio();
response = await dio.post('http://192.168.2.139:8000/api/login', queryParameters: {"nis": nis});
if(response.statusCode == 200){
  return response.data;
}else{
  return '0';
}


//  Logger().d(parseJson(response.body));
}