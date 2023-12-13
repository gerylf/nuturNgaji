import 'package:flutter/material.dart';
import 'package:flutter_application_1/login_page.dart';
import 'register_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Lores(),
    );
  }
}

class Lores extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 300,
              child: Image.asset(
                'assets/nuturngaji.jpg',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'NUTUR NGAJI',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: Colors.green,
                  fontSize: 46,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              height: 1.5,
              color: Colors.black,
              margin: EdgeInsets.symmetric(
                  horizontal:
                      100.0), // Menambah jarak sisi kiri dan kanan sebesar 20.0
            ),
            SizedBox(height: 20),
            Container(
              width: 296,
              height: 30,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: Text('Sign In'),
              ),
            ),
            SizedBox(height: 20),
            Card(
              child: Container(
                width: 300, // Sesuaikan lebar container dengan kebutuhan
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterPage()),
                    );
                  },
                  child: Text('Register'),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              height: 1.5,
              color: Colors.black,
              margin: EdgeInsets.symmetric(
                  horizontal:
                      100.0), // Menambah jarak sisi kiri dan kanan sebesar 20.0
            ),
          ],
        ),
      ),
    );
  }
}

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      body: Center(
        child: Text('Halaman Sign In'),
      ),
    );
  }
}

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Center(
        child: Text('Halaman Register'),
      ),
    );
  }
}
