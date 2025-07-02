import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isLogin = true;
  final _loginFormKey = GlobalKey<FormState>();
  final _registerFormKey = GlobalKey<FormState>();

  // Login fields
  String loginUsername = '';
  String loginPassword = '';
  bool keepLoggedIn = false;

  // Registration fields
  String firstName = '';
  String middleName = '';
  String lastName = '';
  String gender = 'Select Gender';
  DateTime? dob;
  String residence = '';
  String placeOfBirth = '';
  String ministry = 'Select ministry';
  String email = '';
  String mobile = '';
  String password = '';
  String family = 'Select Family';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF3498db), Color(0xFF2c3e50)],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'MT. ZION CHURCH',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  'MANAGEMENT SYSTEM',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white70,
                  ),
                ),
                const SizedBox(height: 40),
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 500),
                  child: isLogin ? _buildLoginForm() : _buildRegisterForm(),
                  transitionBuilder: (Widget child, Animation<double> animation) {
                    return ScaleTransition(scale: animation, child: child);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLoginForm() {
    return Container(
      key: const ValueKey('login'),
      width: 400,
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 5,
          ),
        ],
      ),
      child: Form(
        key: _loginFormKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Sign In',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Username',
                prefixIcon: Icon(Icons.person),
                hintText: 'Mobile Number',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your username';
                }
                return null;
              },
              onChanged: (value) => loginUsername = value,
            ),
            const SizedBox(height: 15),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock),
                hintText: 'eg. X8df!90EO',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your password';
                }
                return null;
              },
              onChanged: (value) => loginPassword = value,
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Checkbox(
                  value: keepLoggedIn,
                  onChanged: (value) {
                    setState(() {
                      keepLoggedIn = value ?? false;
                    });
                  },
                ),
                const Text('Keep me logged in'),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (_loginFormKey.currentState!.validate()) {
                    // Process login
                    print('Login with $loginUsername and $loginPassword');
                  }
                },
                child: const Text('Login'),
              ),
            ),
            const SizedBox(height: 15),
            TextButton(
              onPressed: () {
                setState(() {
                  isLogin = false;
                });
              },
              child: const Text('Not a member yet? Join Us'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRegisterForm() {
    return Container(
      key: const ValueKey('register'),
      width: 500,
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 5,
          ),
        ],
      ),
      child: Form(
        key: _registerFormKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Sign Up',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'First Name',
                      prefixIcon: Icon(Icons.person),
                      hintText: 'John',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter first name';
                      }
                      return null;
                    },
                    onChanged: (value) => firstName = value,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Middle Name',
                      prefixIcon: Icon(Icons.person),
                      hintText: 'Doe',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter middle name';
                      }
                      return null;
                    },
                    onChanged: (value) => middleName = value,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Last Name',
                      prefixIcon: Icon(Icons.person),
                      hintText: 'Smith',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter last name';
                      }
                      return null;
                    },
                    onChanged: (value) => lastName = value,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            DropdownButtonFormField<String>(
              value: gender,
              decoration: const InputDecoration(
                labelText: 'Gender',
                prefixIcon: Icon(Icons.person_outline),
                border: OutlineInputBorder(),
              ),
              items: ['Select Gender', 'Male', 'Female']
                  .map((String value) => DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  gender = value ?? 'Select Gender';
                });
              },
              validator: (value) {
                if (value == null || value == 'Select Gender') {
                  return 'Please select gender';
                }
                return null;
              },
            ),
            const SizedBox(height: 15),
            TextFormField(
              readOnly: true,
              decoration: InputDecoration(
                labelText: 'Date of Birth',
                prefixIcon: const Icon(Icons.calendar_today),
                hintText: dob == null ? 'Select date' : dob.toString().split(' ')[0],
                border: const OutlineInputBorder(),
              ),
              onTap: () async {
                final selectedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1900),
                  lastDate: DateTime.now(),
                );
                if (selectedDate != null) {
                  setState(() {
                    dob = selectedDate;
                  });
                }
              },
              validator: (value) {
                if (dob == null) {
                  return 'Please select date of birth';
                }
                return null;
              },
            ),
            const SizedBox(height: 15),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Residence',
                prefixIcon: Icon(Icons.home),
                hintText: 'Huruma',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter residence';
                }
                return null;
              },
              onChanged: (value) => residence = value,
            ),
            const SizedBox(height: 15),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Place of Birth',
                prefixIcon: Icon(Icons.place),
                hintText: 'Kirinyaga',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter place of birth';
                }
                return null;
              },
              onChanged: (value) => placeOfBirth = value,
            ),
            const SizedBox(height: 15),
            DropdownButtonFormField<String>(
              value: ministry,
              decoration: const InputDecoration(
                labelText: 'Ministry',
                prefixIcon: Icon(Icons.people),
                border: OutlineInputBorder(),
              ),
              items: [
                'Select ministry',
                'None',
                'Coristers',
                'Deacon',
                'Deaconess',
                'Communication',
                'Education',
                'Family',
                'Sabbath School',
                'Health',
                'Women',
                'Stewardship',
                'Youth',
                'Publishing',
                'Children'
              ].map((String value) => DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  )).toList(),
              onChanged: (value) {
                setState(() {
                  ministry = value ?? 'Select ministry';
                });
              },
              validator: (value) {
                if (value == null || value == 'Select ministry') {
                  return 'Please select ministry';
                }
                return null;
              },
            ),
            const SizedBox(height: 15),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Email',
                prefixIcon: Icon(Icons.email),
                hintText: 'mysupermail@mail.com',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter email';
                }
                if (!value.contains('@')) {
                  return 'Please enter a valid email';
                }
                return null;
              },
              onChanged: (value) => email = value,
            ),
            const SizedBox(height: 15),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Mobile Number',
                prefixIcon: Icon(Icons.phone),
                hintText: '0700000000',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.phone,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter mobile number';
                }
                if (value.length < 10) {
                  return 'Please enter a valid mobile number';
                }
                return null;
              },
              onChanged: (value) => mobile = value,
            ),
            const SizedBox(height: 15),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock),
                hintText: 'eg. X8df!90EO',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter password';
                }
                if (value.length < 6) {
                  return 'Password must be at least 6 characters';
                }
                return null;
              },
              onChanged: (value) => password = value,
            ),
            const SizedBox(height: 15),
            DropdownButtonFormField<String>(
              value: family,
              decoration: const InputDecoration(
                labelText: 'Family',
                prefixIcon: Icon(Icons.family_restroom),
                border: OutlineInputBorder(),
              ),
              items: [
                'Select Family',
                'Bethel',
                'Nazareth',
                'Bethlethem',
                'Jerusalem'
              ].map((String value) => DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  )).toList(),
              onChanged: (value) {
                setState(() {
                  family = value ?? 'Select Family';
                });
              },
              validator: (value) {
                if (value == null || value == 'Select Family') {
                  return 'Please select family';
                }
                return null;
              },
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (_registerFormKey.currentState!.validate()) {
                    // Process registration
                    print('Registering user: $firstName $middleName $lastName');
                  }
                },
                child: const Text('Sign Up'),
              ),
            ),
            const SizedBox(height: 15),
            TextButton(
              onPressed: () {
                setState(() {
                  isLogin = true;
                });
              },
              child: const Text('Already a Member? Go and Log In'),
            ),
          ],
        ),
      ),
    );
  }
}