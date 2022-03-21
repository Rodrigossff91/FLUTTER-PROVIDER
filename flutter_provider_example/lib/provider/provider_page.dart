import 'package:flutter/material.dart';
import 'package:flutter_provider_example/provider/user_model.dart';
import 'package:provider/provider.dart';

class ProviderPage extends StatefulWidget {
  const ProviderPage({Key? key}) : super(key: key);

  @override
  _ProviderPageState createState() => _ProviderPageState();
}

class _ProviderPageState extends State<ProviderPage> {
  @override
  Widget build(BuildContext context) {
    var user = Provider.of<UserModel>(context);
    // .read ele vai retornar um instacia sem ficar escutando alterações
    //  var user = context.read<UserModel>();

    // Extrai a propriedade que gostaria de mostrar
    // var imageAvatar =
    //     context.select<UserModel, String>((value) => value.imgAvatar);

    // fica escutando as alteraçoes
    // var user = context.watch<UserModel>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(user.imgAvatar),
                radius: 60,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text(user.name)],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text(user.birthDate)],
              )
            ],
          ),
        ),
      ),
    );
  }
}
