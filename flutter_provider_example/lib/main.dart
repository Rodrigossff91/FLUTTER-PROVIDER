import 'package:flutter/material.dart';
import 'package:flutter_provider_example/provider/provider_page.dart';
import 'package:flutter_provider_example/provider/user_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) {
        return UserModel(
            name: "Rodrigo Ferreira",
            imgAvatar:
                "https://s2.glbimg.com/chFq5Nsb0eGO2Z6Sq3oYTBh9gwU=/0x0:1700x1065/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2020/g/e/IxW0BER9WoC5njOAuGPg/sp-ribeiraopreto-rodrigo-junqueira.jpg",
            birthDate: "10/04/1991");
      },
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          routes: {'/provider': (context) => const ProviderPage()},
          home: Builder(builder: (context) {
            return Scaffold(
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/provider');
                        },
                        child: const Text("Provider")),
                    ElevatedButton(
                        onPressed: () {}, child: const Text("Change Notifier"))
                  ],
                ),
              ),
            );
          })),
    );
  }
}
