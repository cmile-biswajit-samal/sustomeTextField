import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
         // height: 500,
          width: MediaQuery.of(context).size.width ,
          child: Row(
            children: [

              Expanded(child: CountryCodeTextField()),
          ],),
        ),
      ),
    );
  }
}

class CountryCodeTextField extends StatefulWidget {
  @override
  _CountryCodeTextFieldState createState() => _CountryCodeTextFieldState();
}

class _CountryCodeTextFieldState extends State<CountryCodeTextField> {
  String countryCode = '+1'; // Default country code

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Country code dropdown button
        DropdownButton<String>(
          value: countryCode,
          onChanged: (newValue) {
            setState(() {
              countryCode = newValue!;
            });
          },
          items: <String>['+1', '+91', '+44', '+86'] // Add more country codes as needed
              .map<DropdownMenuItem<String>>(
                (value) => DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            ),
          )
              .toList(),
        ),
        // Spacer to add some space between country code and the text field
        SizedBox(width: 5),
        // Text field for the phone number
        Expanded(
          child: TextField(
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              hintText: 'Enter your phone number',
            ),
          ),
        ),
      ],
    );
  }
}
