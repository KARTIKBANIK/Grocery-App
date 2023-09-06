import 'package:http/http.dart' as http;
import 'package:my_grocery/const/const.dart';

class RemoteBannerService {
  var clint = http.Client();
  var remoteUrl = "$baseUrl/api/banners";

  Future<dynamic> get() async {
    var response = await clint.get(
      Uri.parse("$remoteUrl?populate=image"),
    );
    return response;
  }
}

//http://localhost:1337/api/banners?populate=image
