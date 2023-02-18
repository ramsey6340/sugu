import 'package:flutter/material.dart';
import '../../../../components/form_image.dart';
import '../../../../constantes.dart';
import '../../../../size_config.dart';
import 'components/contact_info_store_form.dart';
import 'components/location_store_form.dart';
import 'components/profile_store_form.dart';


class CreateStoreScreen extends StatelessWidget {
  static String routeName = 'create_store_screen';
  const CreateStoreScreen({Key? key, required this.storeFormType}) : super(key: key);
  final StoreFormType storeFormType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        title: const Text("Ouvrir ma boutique"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(18)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              FormImage(imageUrl: "assets/images/Opened-store.png",),
              /*Image.asset(
                "assets/images/Opened-store.png",
                width: getProportionateScreenWidth(320),
                height: getProportionateScreenHeight(320),
              ),*/
              (storeFormType == StoreFormType.profile)?ProfileStoreForm():(storeFormType == StoreFormType.contact)?ContactInfoStoreForm():LocationStoreForm(),
            ],
          )
        ),
      ),
    );
  }
}
