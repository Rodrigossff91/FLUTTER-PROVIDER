import 'package:flutter/material.dart';

class ProviderController extends ChangeNotifier {
  String name = 'Elias';
  String imgAvatar =
      'https://s2.glbimg.com/chFq5Nsb0eGO2Z6Sq3oYTBh9gwU=/0x0:1700x1065/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2020/g/e/IxW0BER9WoC5njOAuGPg/sp-ribeiraopreto-rodrigo-junqueira.jpg';
  String birthDate = '15/04/1991';

  void alterarDados() {
    name = 'Rodrigo';
    imgAvatar =
        'https://s2.glbimg.com/chFq5Nsb0eGO2Z6Sq3oYTBh9gwU=/0x0:1700x1065/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2020/g/e/IxW0BER9WoC5njOAuGPg/sp-ribeiraopreto-rodrigo-junqueira.jpg';
    birthDate = '10/04/1991';
    notifyListeners();
  }

  void alterarNome() {
    name = 'Rodrigo aaaaaaa';
    imgAvatar =
        'https://s2.glbimg.com/chFq5Nsb0eGO2Z6Sq3oYTBh9gwU=/0x0:1700x1065/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2020/g/e/IxW0BER9WoC5njOAuGPg/sp-ribeiraopreto-rodrigo-junqueira.jpg';
    birthDate = '10/04/1991';
    notifyListeners();
  }
}
