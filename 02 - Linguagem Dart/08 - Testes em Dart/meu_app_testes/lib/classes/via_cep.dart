import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

@GenerateMocks([MockViaCep])

class ViaCep {
  Future<Map<dynamic, dynamic>> retornarCEP(String cep) async {
    var url = Uri.parse("https://viacep.com.br/ws/$cep/json/"); // nossa URL
    var retorno = await http.get(
      url,
    ); // manda ele esperar ate que o get esteja com os dados
    var decodedResponse = jsonDecode(utf8.decode(retorno.bodyBytes)) as Map;

    print(decodedResponse);

    return decodedResponse; // Retornar o corpo
  }
}


class MockViaCep extends Mock implements ViaCep {

}