import 'package:flutter/material.dart';

import 'LogInPage.dart';
import 'MyHomePage.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  get google => google.com;
  get facebook => facebook.com;
  get tictok => tictok.com;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            PopupMenuButton(
              itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                PopupMenuItem(
                  child: Text('Search'),
                  value: 'search',
                ),
                PopupMenuItem(
                  child: Text('Menu'),
                  value: 'menu',
                ),
                PopupMenuItem(
                  child: Text('Log'),
                  value: 'log',
                ),
                PopupMenuItem(
                  child: Text('Sign'),
                  value: 'sign',
                ),
              ],
              onSelected: (value) {
                // Handle item selection
                switch (value) {
                  case 'search':
                  // Navigate to search page
                    break;
                  case 'menu':
                  // Handle menu action
                    break;
                  case 'log':
                  // Navigate to login page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LogInPage()),
                    );
                    break;
                }
              },
              icon: Icon(Icons.menu), // Menu icon
            ),
            SizedBox(width: 8), // Spacing
            Icon(Icons.headphones), // Book icon
            SizedBox(width: 8), // Spacing
            Text('AudioRAB', style: TextStyle(fontSize: 20.0)),
          ],
        ),
        backgroundColor: Color.fromARGB(255, 93, 147, 223),
        actions: [
          IconButton(
            onPressed: () {
              // Navigate to sign up page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => google.com()),
              );
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              // Navigate to login page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LogInPage()),
              );
            },
            icon: Icon(Icons.login),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.red, Colors.blue], // Add your colors here
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start, // Align logo at the top
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'images/logo1.jpg', // Provide your image path here
                width: 90, // Adjust the width as needed
                height: 90, // Adjust the height as needed
              ),
              Text(
                "Real Time Audio Book",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              SizedBox(
                height: 350,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(height: 5), // Spacing below logo
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          TextField(
                            controller: _usernameController,
                            decoration: InputDecoration(
                              labelText: 'Username',
                              prefixIcon: Icon(Icons.person),
                            ),
                          ),
                          SizedBox(height: 5.0),
                          TextField(
                            controller: _emailController,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              labelText: 'Email',
                              prefixIcon: Icon(Icons.email),
                            ),
                          ),
                          SizedBox(height: 5.0),
                          TextField(
                            controller: _passwordController,
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              prefixIcon: Icon(Icons.password),
                            ),
                          ),
                          SizedBox(height: 10.0),
                          TextButton(
                            onPressed: () {
                              // Navigate to forgot password page
                              // Replace ForgotPasswordPage with the desired page
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MyHomePage(),
                                ),
                              );
                            },
                            child: Text(
                              'Forgot Password',
                              style: TextStyle(
                                color: Colors.red,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          SizedBox(
                            width: double.infinity, // Set button width to match parent
                            height: 50.0, // Adjust button height as needed
                            child: ElevatedButton(
                              onPressed: () {
                                // Implement sign up functionality here
                                String username = _usernameController.text;
                                String email = _emailController.text;
                                String password = _passwordController.text;
                                // You can add your sign up logic here
                                print(
                                  'Username: $username, Email: $email, Password: $password',
                                );

                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const MyHomePage(),
                                  ),
                                );
                              },
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary:
                                Colors.black, // Change button color here
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                '-------OR SignUP-------',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      // Navigate to sign up page
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => google.com()),
                      );
                    },
                    icon: Icon(Icons.g_mobiledata,color: Colors.white,size: 60,),
                  ),
                  IconButton(
                    onPressed: () {
                      // Navigate to login page
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => facebook.com()),
                      );
                    },
                    icon: Icon(Icons.facebook,color: Colors.white,size: 40,),
                  ),
                  IconButton(
                    onPressed: () {
                      // Navigate to login page
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => tictok.com()),
                      );
                    },
                    icon: Icon(Icons.tiktok,color: Colors.white,size: 40,),
                  ),
                ],

              ),

            ],
          ),
        ),
      ),
    );
  }

    @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
