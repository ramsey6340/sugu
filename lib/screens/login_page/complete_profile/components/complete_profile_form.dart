import 'package:flutter/material.dart';
import 'package:sugu/size_config.dart';
import '../../../../components/Next_button.dart';
import '../../../../components/form_tools.dart';
import '../../otp/otp_screen.dart';


class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({Key? key}) : super(key: key);

  @override
  State<CompleteProfileForm> createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  String? first_name;
  String? last_name;
  String? phone_number;
  String? address;
  late final List<String?> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: getProportionateScreenHeight(40)),
        child: Column(
          children: [
            FormTools.buildFirstNameFormField(first_name=first_name, errors),
            SizedBox(height: SizeConfig.screenHeight * 0.03,), // 3%
            FormTools.buildLastNameFormField(last_name=last_name, errors),
            SizedBox(height: SizeConfig.screenHeight * 0.03,), // 3%
            FormTools.buildPhoneNumberFormField(phone_number, errors),
            SizedBox(height: SizeConfig.screenHeight * 0.03,), // 3%
            FormTools.buildAddressFormField(address, errors),
            SizedBox(height: SizeConfig.screenHeight * 0.07,), // 7%
            NextButton(
                text: 'Continuer',
                press: (){
                  if(_formKey.currentState!.validate()){
                    // _formKey.currentState!.save();
                    // on peut naviguer vers l'ecran de vérification OTP
                    Navigator.pushNamed(context, OTPScreen.routeName);
                  }
                }
            ),

          ],
        ),
      ),
    );
  }
}
