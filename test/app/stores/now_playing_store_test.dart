// import 'dart:convert';
//
// import 'package:flutter_test/flutter_test.dart';
// import 'package:http/testing.dart';
// import 'package:http/http.dart' as http;
//
// main(){
//   final httpClient = MockClient((request)async => http.Response(jsonEncode(_nowPlayingData), 200,
//       headers: {
//         HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8',
//       }
//   ));
//   final nowPlayingRepository = NowPlayingApiRepository(httpClient: httpClient);
//
//   test("Deve alterar o estado para sucesso", ()async{
//
//   });
// }