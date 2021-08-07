// import 'package:flutter/material.dart';
//
// class Dashboard extends StatelessWidget {
//   const Dashboard({Key key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Text("hello"),
//
//     );
//   }
// }


import 'package:flutter/material.dart';
import '../../helpers/platform_flat_button.dart';
import 'title_and_message.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;

    void goToHomeScreen() => Navigator.pushReplacementNamed(context, "/Home");

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: deviceHeight * 0.04,
            ),
            Image.asset('assets/images/welcome_image.png',
                width: double.infinity, height: deviceHeight * 0.4),
            SizedBox(
              height: deviceHeight * 0.05,
            ),
            TitleAndMessage(deviceHeight),
            SizedBox(
              height: deviceHeight * 0.03,
            ),
            Container(
              height: deviceHeight * 0.09,
              width: double.infinity,
              child: Padding(
                  padding: const EdgeInsets.only(left: 35.0, right: 35.0),
                  child: PlatformFlatButton(
                    handler: goToHomeScreen ,
                    color: Theme.of(context).primaryColor,
                    buttonChild: FittedBox(
                      child: Text(
                        "started now",
                        style: Theme.of(context)
                            .textTheme
                            .headline3
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
