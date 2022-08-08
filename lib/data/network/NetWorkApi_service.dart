import 'dart:convert';
import 'dart:io';

import 'package:mvvm/data/app_exception.dart';
import 'package:mvvm/data/network/BaseApi_sevice.dart';
import 'package:http/http.dart' as http;

class NetWorkApiService extends BaseApiClass{
  @override
  Future getGetApiResponse(String url) async {
    // TODO: implement getGetApiResponse
    dynamic responseJson;
    try{
      final response = await http.get(Uri.parse(url));
      responseJson=returnResponse(response);
    }on SocketException{
      throw FetchDataException("No Internet Connection");
    }
    return responseJson;
    // throw UnimplementedError();
    
  }

  @override
  Future getPostApiResponse(String url,dynamic data) async {
    // TODO: implement getPostApiResponse
     dynamic responseJson;
    try{
      http.Response response = await http.post(
        Uri.parse(url),
        body: data,
      ).timeout(Duration(seconds: 10));

      responseJson=returnResponse(response);
    }on SocketException{
      throw FetchDataException("No Internet Connection");
    }
      return responseJson;

    // throw UnimplementedError();
  }

  dynamic returnResponse(http.Response response){
    switch(response.statusCode){
      case 200:
      dynamic responseJson=json.decode(response.body);
      return responseJson;
      default:
      throw FetchDataException("error occured while fetching data"+response.statusCode.toString());
    }
  }

}