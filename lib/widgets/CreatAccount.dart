import 'package:flutter/material.dart';

class CreatAccount extends StatefulWidget {
  @override
  _CreatAccountState createState() => _CreatAccountState();
}

class _CreatAccountState extends State<CreatAccount> {


  final _formKey = GlobalKey<FormState>();
  String email;
  String password;

  final _passwordFocusNode = FocusNode();
  @override
  void dispose() {
    _passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  void save() {
    final isvalid = _formKey.currentState.validate();
    if (!isvalid) {
      return;
    }
    _formKey.currentState.save();
  }

  bool _obscureText = true;
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  String lantitle = 'Eng';
  String Logo = 'EgySouq';
  String txtemail='email';
  String txtpassword = 'password';
  String confirmPassword = 'Confirm Password';
  String showPassword = 'Show Password';
  String hidPassword = 'Hid Password';
  String singUP = 'Sing  Up';
  String validEmail = 'Please enter valid email';
  String validPassword = 'please enter valid password';
  String validLengthPassword = 'Must be at least 6 characters';
  String egySouqLogo = 'EgySouq';

  bool isEng = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[

           Container(
             color: Color.fromRGBO(213, 100, 80, 1),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: <Widget>[
                 MaterialButton(
                   height: 50,
                   onPressed: () {
                     this.setState(() {
                       //Localizations.localeOf(context).languageCode ==
                       //
                       //                            "ar"
                       // data.changeLocale(Locale("en", "US")
                       if (lantitle == 'Eng') {
                         isEng = false;
                         lantitle = 'عربى';
                         txtemail = 'ايميل';
                         txtpassword = 'رقم سرى';
                         confirmPassword = 'تاكيد الرقم السرى';
                         showPassword = 'اظهار الرقم السرى';
                         hidPassword = 'اخفاء الرقم السرى';
                         singUP = 'تسجيل ';
                         validEmail = 'من فضلك ادخل الايميل بشكل صحيح';
                         validPassword = 'من فضلك تاكد من الرقم السرى';
                         validLengthPassword = 'يجب ان يكون اكبر من ٦ حروف';
                         egySouqLogo = 'ايجى سوق';

                       }
                       //Localizations.localeOf(context)
                       //                                .languageCode ==
                       //                            "en"
                       //    data.changeLocale(Locale("ar", ""));
                       else if (lantitle == 'عربى') {
                         isEng = true;
                         lantitle = 'Eng';
                         txtemail = 'email';
                         txtpassword = 'password';
                         confirmPassword = 'Confirm Password';
                         showPassword = 'Show Password';
                         hidPassword = 'Hid Password';
                         singUP = 'Sing  Up';
                         validEmail = 'Please enter valid email';
                         validPassword = 'please enter valid password';
                         validLengthPassword = 'Must be at least 6 characters';
                         egySouqLogo = 'EgySouq';

                       }
                     });
                   },
                   child: Text(
                     lantitle,
                     style: TextStyle(fontSize: 25, color: Colors.white),
                   ),
                 ),

                 Text(
                   egySouqLogo,
                   style: TextStyle(fontSize: 18, color: Colors.white),
                 )
               ],
             ),
           ),
           Directionality(
             textDirection: isEng ? TextDirection.ltr : TextDirection.rtl ,
             child: Container(
               padding: EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 50.0),
               margin: EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 50.0),
               decoration: BoxDecoration(
                 color: const Color.fromRGBO(255, 255, 255, 1.0),
                 border: Border.all(color: Colors.blueGrey),
                 borderRadius:
                 new BorderRadius.all(const Radius.circular(6.0)),
               ),
               child: Form(
                 key: _formKey,
                 child: Column(
                   children: <Widget>[
                     TextFormField(
                       decoration: InputDecoration(
                         labelText:
                         txtemail,
                       ),
                       onFieldSubmitted: (_) {
                         FocusScope.of(context)
                             .requestFocus(_passwordFocusNode);
                       },
                       validator: (value) {
                         if (value.isEmpty) {
                           return validEmail;
                         }
                         return null;
                       },
                       onSaved: (value) {
                         email = value;
                       },
                     ),
                     TextFormField(
                       decoration: InputDecoration(
                         labelText: txtpassword,
                       ),
                       focusNode: _passwordFocusNode,
                       obscureText: _obscureText,
                       validator: (value) {
                         if (value.isEmpty) {
                           return validPassword;
                         }
                         if (value.length < 6) {
                           return validLengthPassword;
                         }

                         return null;
                       },
                       onSaved: (value) {
                         password = value;
                       },
                     ),
                     TextFormField(
                       decoration: InputDecoration(
                         labelText: confirmPassword,
                       ),
                       focusNode: _passwordFocusNode,
                       obscureText: _obscureText,
                       validator: (value) {
                         if (value.isEmpty) {
                           return validPassword;
                         }
                         if (value.length < 6) {
                           return validLengthPassword;
                         }

                         return null;
                       },
                       onSaved: (value) {
                         password = value;
                       },
                     ),
                     SizedBox(
                       height: 20,
                     ),
                     MaterialButton(
                       height: 50,
                       color: Color.fromRGBO(213, 100, 80, 1),
                       shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(30)),
                       onPressed: _toggle,
                       child: Text(
                         _obscureText
                             ? showPassword
                             : hidPassword,
                         style: TextStyle(fontSize: 25, color: Colors.white),
                       ),
                     ),
                     SizedBox(
                       height: 20,
                     ),
                     GestureDetector(
                       onTap: save,
                       child: Container(
                         margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                         padding: EdgeInsets.all(15.0),
                         alignment: FractionalOffset.center,
                         decoration: new BoxDecoration(
                           color: const Color.fromRGBO(45, 42, 39, 1),
                           borderRadius: new BorderRadius.all(
                               const Radius.circular(30.0)),
                         ),
                         child: Text(
                           singUP,
                           style: new TextStyle(
                               color: Colors.white,
                               fontSize: 20.0,
                               fontWeight: FontWeight.bold),
                         ),
                       ),
                     ),
                   ],
                 ),
               ),
             ),
           ),


    ]);
  }
}
