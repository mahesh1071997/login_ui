import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login-view.dart';
class InitialView extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _passwordVisibility = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            bottom: 100,
            width: 500,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(330), // Large round shape for top-right corner
              ),
              child: Container(
                height: 750,
                padding: const EdgeInsets.symmetric(horizontal: 64.0, vertical: 24.0),
                color: Color.fromARGB(255, 54, 33, 232),
              ),
            ),
          ),
          Positioned(
            width: 300,
            top: 120,
            left: 50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Divider(height: 10,color: Colors.orange,endIndent: 270,thickness: 2,),
                const SizedBox(height: 24.0),
                Text(
                  'PHONE SERVICE\nMADE EASY',
                  style: GoogleFonts.aboreto(
                    textStyle: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: Colors.white,
                      letterSpacing: 5.0,
                    ),
                  ),
                ),
                const SizedBox(height: 24.0),
                Text(
                  'What would you like to do?',
                  style: GoogleFonts.abel(
                    textStyle: Theme.of(context).textTheme.displayLarge?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.0,
                    ),
                  ),
                ),
                const SizedBox(height: 24.0),
                FilledButton(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 44),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22),
                    ),
                  ),
                  child: Text(
                    'Activate my service',
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 24.0),
                OutlinedButton(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  style: OutlinedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 44),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22),
                    ),
                  ),
                  child: Text(
                    'Shop Visible',
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 40,
            right: 40,
            child: Text(
              'v\'s\'ble',
              textAlign: TextAlign.end,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Positioned(
            bottom: -130,
            left: -150,
            child: ClipOval(
              
              child: Container(
                color: Color.fromARGB(255, 232, 231, 229),
                height: 220,
                width: 300,
              ),
            ),
          ),
          Positioned(
            top: 690,
            right: 20,
            child: InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignInScreen()),
                );
              },
              child: Hero(
                tag: 'sign-in',
                child: ClipOval(
                  child: Container(
                    color: Color.fromARGB(255, 29, 32, 51),
                    height: 100,
                    width: 100,
                    alignment: Alignment.center,
                    child: Text(
                      'Sing in',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
