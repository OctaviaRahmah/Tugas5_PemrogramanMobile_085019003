import 'package:http/http.dart' as http;

class Repository {
  final baseUrl = 'https://61d81654e6744d0017ba8923.mockapi.io/peserta';

Future getData() async{
  try {
    final response = await http.get(Url.parse(_baseUrl;));

    if (response.statusCode == 200) {
     print(response.body); 
      Iterable it = jsonDecode(resonse.body);
      return jsonEncode(response.body);
      List<Peserta> peserta = it.map((e) => Peserta.fromJson(e)).toList();
      return peserta;
    }
  } catch (e) {
    print(e.toString());
  }
}
}
