import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
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
            child: Hero(
              tag: 'sign-in',
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(330), // Large round shape for top-right corner
                ),
                child: Container(
                  height: 750,
                  padding: const EdgeInsets.symmetric(horizontal: 64.0, vertical: 24.0),
                  color: Color.fromARGB(255, 29, 32, 51),
                ),
              ),
            ),
          ),
          Positioned(
            width: 300,
            top: 200,
            left: 50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Divider(
                  height: 10,
                  color: Colors.orange,
                  endIndent: 270,
                  thickness: 2,
                ),
                const SizedBox(height: 8.0),
                Text(
                  'Sign in',
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        color: Colors.white,
                        letterSpacing: 0.0,
                      ),
                ),
                const SizedBox(height: 24.0),
                TextFormField(
                  controller: _emailController,
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'Email address',
                    labelStyle: TextStyle(color: Colors.white),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.outline,
                        width: 1.0,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.primary,
                        width: 1.0,
                      ),
                    ),
                  ),
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        letterSpacing: 0.0,
                      ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 24.0),
                TextFormField(
                  controller: _passwordController,
                  autofocus: false,
                  obscureText: !_passwordVisibility,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          letterSpacing: 0.0,
                        ),
                    labelStyle: TextStyle(color: Colors.white),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.outline,
                        width: 1.0,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.primary,
                        width: 1.0,
                      ),
                    ),
                    suffixIcon: InkWell(
                      onTap: () {
                        _passwordVisibility = !_passwordVisibility;
                      },
                      child: Icon(
                        _passwordVisibility ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                        color: Theme.of(context).colorScheme.outline,
                      ),
                    ),
                  ),
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        letterSpacing: 0.0,
                      ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
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
                    'Sign in',
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          color: Colors.black,
                        ),
                  ),
                ),
                const SizedBox(height: 24.0),
              ],
            ),
          ),
          Positioned(
            top: 40,
            right: 40,
            child: Text(
              'v\'s\'ble',
              textAlign: TextAlign.end,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
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
            bottom: 20,
            left: 20,
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                    size: 16,
                  ),
                  const SizedBox(width: 4.0),
                  Text(
                    'Back',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.black,
                        ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
