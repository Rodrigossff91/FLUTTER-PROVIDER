import 'package:flutter/material.dart';
import 'package:flutter_provider_example/change_notifier/provider_controller.dart';
import 'package:provider/provider.dart';
import 'package:tuple/tuple.dart';

class ChangeNotifierPage extends StatefulWidget {
  const ChangeNotifierPage({Key? key}) : super(key: key);

  @override
  State<ChangeNotifierPage> createState() => _ChangeNotifierPageState();
}

class _ChangeNotifierPageState extends State<ChangeNotifierPage> {
  @override
  void initState() {
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      Future.delayed(const Duration(seconds: 1), () {
        context.read<ProviderController>().alterarDados();
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // var controller = Provider.of<ProviderController>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Change Notifier'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<ProviderController>(
                builder: (context, value, child) {
                  return CircleAvatar(
                    backgroundImage: NetworkImage(value.imgAvatar),
                    radius: 60,
                  );
                },
              ),
              // CircleAvatar(
              //   backgroundImage:
              //       NetworkImage(context.watch<ProviderController>().imgAvatar),
              //   radius: 60,
              // ),
              const SizedBox(
                height: 20,
              ),
              Consumer<ProviderController>(
                builder: (context, value, child) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text(value.name)],
                  );
                },
              ),

              Selector<ProviderController, String>(
                selector: (context, controller) => controller.birthDate,
                builder: (context, value, child) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text(value)],
                  );
                },
              ),
              Selector<ProviderController, Tuple2<String, String>>(
                selector: (context, controller) =>
                    Tuple2(controller.name, controller.birthDate),
                builder: (context, value, child) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text(
                            value.item1,
                          ),
                          Text(
                            value.item2,
                          ),
                        ],
                      )
                    ],
                  );
                },
              ),
              ElevatedButton(
                  onPressed: () {
                    context.read<ProviderController>().alterarNome();
                  },
                  child: const Text('Alterar Nome'))
            ],
          ),
        ),
      ),
    );
  }
}
