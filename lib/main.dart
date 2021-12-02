import 'package:auth_screen/constants.dart';
import 'package:auth_screen/signin_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NCP Application',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.white,
        
      ),
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
           Expanded(
            
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/start_scanning.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          
          FittedBox(
                  child: GestureDetector(
                    onTap: () {
                       Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignInScreen()));
                      
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 40),
                      padding:
                          EdgeInsets.symmetric(horizontal: 26, vertical: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: kPrimaryColor,
                      ),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "START SCANNING",
                            style: Theme.of(context).textTheme.button.copyWith(
                                  color: Colors.black,
                                ),
                          ),
                          SizedBox(width: 10),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.black, 
                          )
                        ],
                      ),
                    ),
                  ),
                ),
         
          
        ],
      ),
    );
  }
}
