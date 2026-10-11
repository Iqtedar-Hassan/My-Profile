import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile',
      debugShowCheckedModeBanner: false,

      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final String correctEmail = 'iqtedar555@gmail.com';

  final String correctPassword = 'Iqtedar@1214';

  void login() {
    String email = emailController.text;
    String password = passwordController.text;

    if (email == correctEmail && password == correctPassword) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Invalid Email or Password')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('LOGIN'), centerTitle: true),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(25),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.account_circle, size: 100),

                const SizedBox(height: 20),

                const Text(
                  'Welcome Back',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 10),

                const Text(
                  'Please login to continue',
                  style: TextStyle(fontSize: 16),
                ),

                const SizedBox(height: 30),

                TextField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    hintText: 'Enter your email',
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(),
                  ),
                ),

                const SizedBox(height: 20),

                TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter your password',
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(),
                  ),
                ),

                const SizedBox(height: 25),

                SizedBox(
                  width: double.infinity,
                  height: 50,

                  child: ElevatedButton(
                    onPressed: login,

                    child: const Text('LOGIN', style: TextStyle(fontSize: 18)),
                  ),
                ),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('IQTEDAR HASSAN'), centerTitle: true),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 30),

              CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('Images/Pic.jpeg'),
              ),

              const SizedBox(height: 30),

              const Text(
                'Iqtedar Hassan',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 5),

              const Text('Software Engineer', style: TextStyle(fontSize: 16)),

              const Divider(height: 30, thickness: 1),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    const Text(
                      'Personal Information',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 15),

                    Row(
                      children: const [
                        Text(
                          'Email: ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('64280@students.riphah.edu.pk'),
                      ],
                    ),

                    const SizedBox(height: 10),

                    Row(
                      children: const [
                        Text(
                          'University: ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('Riphah International University'),
                      ],
                    ),

                    const SizedBox(height: 10),

                    Row(
                      children: const [
                        Text(
                          'Program: ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('BS Software Engineering'),
                      ],
                    ),

                    const SizedBox(height: 10),

                    Row(
                      children: const [
                        Text(
                          'Semester: ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('5th Semester'),
                      ],
                    ),
                  ],
                ),
              ),

              const Divider(height: 30, thickness: 1),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: const [
                    Text(
                      'About Me',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 10),

                    Text(
                      'I am a Software Engineering Student '
                      'interested in PF, DB Systems, '
                      'Mobile App Development and '
                      'Website Development.',
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Contact Me'),
                        content: const Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'WhatsApp:',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text('+92 344 7466814'),

                            SizedBox(height: 15),

                            Text(
                              'Email:',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text('64280@students.riphah.edu.pk'),
                          ],
                        ),

                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Close'),
                          ),
                        ],
                      );
                    },
                  );
                },

                child: const Text('Contact Me'),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
