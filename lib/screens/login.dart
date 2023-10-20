import 'package:money_flow/exports.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }

  Widget getBody() {
    String defaultFontFamily = 'Roboto-Light.ttf';
    double defaultFontSize = 14;
    double defaultIconSize = 17;

    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 35, bottom: 30),
      width: double.infinity,
      height: double.infinity,
      color: Colors.white70,
      child: Column(
        children: <Widget>[
          // Flexible(
          //   flex: 1,
          //   child: InkWell(
          //     child: Container(
          //       child: Align(
          //         alignment: Alignment.topLeft,
          //         child: Icon(Icons.close),
          //       ),
          //     ),
          //     onTap: () {
          //       Navigator.pop(context);
          //     },
          //   ),
          // ),
          Flexible(
            flex: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 130,
                  height: 130,
                  alignment: Alignment.center,
                  child: Image.asset("assets/images/MONEY.gif"),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  showCursor: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    prefixIcon: Icon(
                      Icons.phone,
                      color: Color(0xFF666666),
                      size: defaultIconSize,
                    ),
                    fillColor: Color(0xFFF2F3F5),
                    hintStyle: TextStyle(
                        color: Color(0xFF666666),
                        fontFamily: defaultFontFamily,
                        fontSize: defaultFontSize),
                    hintText: "Phone Number",
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  showCursor: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: Color(0xFF666666),
                      size: defaultIconSize,
                    ),
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                      color: Color(0xFF666666),
                      size: defaultIconSize,
                    ),
                    fillColor: Color(0xFFF2F3F5),
                    hintStyle: TextStyle(
                      color: Color(0xFF666666),
                      fontFamily: defaultFontFamily,
                      fontSize: defaultFontSize,
                    ),
                    hintText: "Password",
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: double.infinity,
                  child: Text(
                    "Forgot your password?",
                    style: TextStyle(
                      color: Color(0xFF666666),
                      fontFamily: defaultFontFamily,
                      fontSize: defaultFontSize,
                      fontStyle: FontStyle.normal,
                    ),
                    textAlign: TextAlign.end,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: double.infinity,
                  child: MaterialButton(
                    padding: EdgeInsets.all(17.0),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'Poppins-Medium.ttf',
                      ),
                      textAlign: TextAlign.center,
                    ),
                    color: Theme.of(context).primaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(15.0),
                        side:
                            BorderSide(color: Theme.of(context).primaryColor)),
                  ),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xFFF2F3F7)),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Text(
                      "Don't have an account? ",
                      style: TextStyle(
                        color: Color(0xFF666666),
                        fontFamily: defaultFontFamily,
                        fontSize: defaultFontSize,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () => {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => AppSingUp()),
                      // )
                    },
                    child: Container(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Color(0xFFAC252B),
                          fontFamily: defaultFontFamily,
                          fontSize: defaultFontSize,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  // Widget getBody() {
  //   var size = MediaQuery.of(context).size;
  //   return SafeArea(
  //     child: SingleChildScrollView(
  //       child: Center(
  //         child: Column(
  //           children: [
  //             Container(
  //               height: 70,
  //               decoration: BoxDecoration(
  //                 shape: BoxShape.circle,
  //                 image: DecorationImage(
  //                     image: AssetImage("assetName"), fit: BoxFit.cover),
  //                 // color: Colors.white
  //               ),
  //             ),
  //             SizedBox(
  //               height: 50,
  //             ),
  //             Container(
  //               width: double.infinity,
  //               margin: EdgeInsets.symmetric(horizontal: 25),
  //               decoration: BoxDecoration(
  //                   color: Colors.white,
  //                   borderRadius: BorderRadius.circular(25),
  //                   boxShadow: [
  //                     BoxShadow(
  //                       color: Colors.grey,
  //                       spreadRadius: 2,
  //                       blurRadius: 3,
  //                     )
  //                   ]),
  //               child: Padding(
  //                 padding:
  //                     EdgeInsets.only(left: 20, top: 15, bottom: 5, right: 20),
  //                 child: Column(
  //                   crossAxisAlignment: CrossAxisAlignment.start,
  //                   children: [
  //                     Text(
  //                       "email address",
  //                       style: TextStyle(
  //                         fontWeight: FontWeight.bold,
  //                         fontSize: 13,
  //                         color: Colors.grey.shade500,
  //                       ),
  //                     ),
  //                     TextField(
  //                       controller: _email,
  //                       cursorColor: Colors.black,
  //                       style: TextStyle(
  //                           fontSize: 17,
  //                           fontWeight: FontWeight.w500,
  //                           color: Colors.black),
  //                       decoration: InputDecoration(
  //                         border: InputBorder.none,
  //                         prefixIcon: Icon(Icons.mail_outline),
  //                         prefixIconColor: Colors.black,
  //                         hintText: "email",
  //                       ),
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //             ),
  //             SizedBox(
  //               height: 20,
  //             ),
  //             Container(
  //               width: double.infinity,
  //               margin: EdgeInsets.symmetric(horizontal: 25),
  //               decoration: BoxDecoration(
  //                   color: Colors.white,
  //                   borderRadius: BorderRadius.circular(25),
  //                   boxShadow: [
  //                     BoxShadow(
  //                       color: Colors.grey,
  //                       spreadRadius: 2,
  //                       blurRadius: 3,
  //                     )
  //                   ]),
  //               child: Padding(
  //                 padding:
  //                     EdgeInsets.only(left: 20, top: 15, bottom: 5, right: 20),
  //                 child: Column(
  //                   crossAxisAlignment: CrossAxisAlignment.start,
  //                   children: [
  //                     Text(
  //                       "password",
  //                       style: TextStyle(
  //                         fontWeight: FontWeight.bold,
  //                         fontSize: 13,
  //                         color: Colors.grey.shade500,
  //                       ),
  //                     ),
  //                     TextField(
  //                       obscureText: true,
  //                       controller: _password,
  //                       cursorColor: Colors.black,
  //                       style: TextStyle(
  //                           fontSize: 17,
  //                           fontWeight: FontWeight.w500,
  //                           color: Colors.black),
  //                       decoration: InputDecoration(
  //                         border: InputBorder.none,
  //                         prefixIcon: Icon(Icons.lock),
  //                         prefixIconColor: Colors.black,
  //                         suffixIcon: Icon(Icons.remove_red_eye),
  //                         hintText: "password",
  //                       ),
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //             ),
  //             SizedBox(
  //               height: 40,
  //             ),
  //             GestureDetector(
  //               onTap: () {
  //                 Navigator.pushReplacement(context,
  //                     MaterialPageRoute(builder: (context) => HomeScreen()));
  //               },
  //               child: Container(
  //                 padding: EdgeInsets.all(16),
  //                 margin: EdgeInsets.symmetric(horizontal: 25),
  //                 decoration:
  //                     BoxDecoration(color: Theme.of(context).primaryColor),
  //                 child: Center(
  //                   child: Text(
  //                     "Login",
  //                     style: TextStyle(
  //                       color: Colors.white,
  //                       fontSize: 16,
  //                       fontWeight: FontWeight.w600,
  //                       letterSpacing: 1,
  //                     ),
  //                   ),
  //                 ),
  //               ),
  //             ),
  //             SizedBox(
  //               height: 20,
  //             ),
  //             Padding(
  //               padding: EdgeInsets.only(left: 25, right: 25),
  //               child: Row(
  //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                 children: [
  //                   GestureDetector(
  //                     child: Text(
  //                       "SignUp",
  //                       style: TextStyle(
  //                           fontSize: 15,
  //                           color: Colors.black,
  //                           fontWeight: FontWeight.w300),
  //                     ),
  //                   ),
  //                   GestureDetector(
  //                     child: Text(
  //                       "Forgot Password",
  //                       style: TextStyle(
  //                           fontSize: 15,
  //                           color: Colors.black,
  //                           fontWeight: FontWeight.w300),
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
