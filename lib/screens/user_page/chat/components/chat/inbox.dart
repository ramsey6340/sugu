import 'package:flutter/material.dart';
import '../../../../../components/build_list_message.dart';
import '../../../../../components/send_message_bar.dart';
import '../../../../../models/store.dart';
import '../../../details_store/details_store_screen.dart';


class Inbox extends StatelessWidget {
  static String routeName = 'inbox';
  const Inbox({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = ModalRoute.of(context)?.settings.arguments as Store;
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: GestureDetector(
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsStoreScreen(store: store,))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(store.image),
              ),
              SizedBox(width: 10,),
              Text('${store.name}', style: TextStyle(color: Colors.black)),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          const Expanded(child: BuildListMessage()),
          SendMessageBar(),
        ],
      ),
      //bottomNavigationBar: ,
    );
  }
}
