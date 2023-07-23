import 'package:flutter/material.dart';
import 'package:textfieldsd/string_constant.dart';

import 'color_constant.dart';
import 'number_constant.dart';

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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String countryCode = '+91';
  TextEditingController phoneNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
          child: Container(
            height:
                60,
            padding: const EdgeInsets.symmetric(
                horizontal: 3),
            decoration: BoxDecoration(
              color: buttonColor,
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                // Country code dropdown button
                Expanded(
                  flex: 2,
                  child: Center(
                    child: DropdownButton<String>(
                       isExpanded: true,
                      //padding: EdgeInsets.zero,
                      underline: Container(),
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      value: countryCode,
                      onChanged: (newValue) {
                        setState(() {
                          countryCode = newValue ?? "+91";
                          phoneNumberController.clear();
                        });
                      },
                      items: <String>[
                        '+91',
                        '+1',
                        '+44',
                        '+86'
                      ] // Add more country codes as needed
                          .map<DropdownMenuItem<String>>(
                            (value) => DropdownMenuItem<String>(
                              value: value,
                              child: Center(child: Text(value)),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ),
                // Spacer to add some space between country code and the text field
               VerticalDivider(),
                // Text field for the phone number
                Expanded(
                  flex: 8,
                  child: TextFormField(
                    // inputFormatters: formValidationMethod(
                    //   ValidationParamsEnum.phoneNumber.name,
                    // ),
                    onChanged: (phone) {
                      setState(() {
                        // numberProvider?.countryCode = countryCode;
                        // numberProvider?.number = phone;
                        if (phone.length == NumberConstant.doubleTen) {
                          FocusScope.of(context).unfocus();
                        }
                      });
                    },
                     validator: (String? value) {
                        if (value?.length !=
                            NumberConstant.intTen) {
                          return StringConstant
                              .textErrorPhoneNumber;
                        }
                        return null;
                      },

                    maxLength: NumberConstant.intTen,
                    controller: phoneNumberController,
                    cursorHeight: NumberConstant.doubleTwenty,
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                      counterText: StringConstant.textEmpty,
                      border: UnderlineInputBorder(borderSide: BorderSide.none),
                      hintStyle: TextStyle(
                          color: blackColor54,
                          fontSize: NumberConstant.doubleEighteen,
                          fontWeight: FontWeight.w400),
                      hintText: StringConstant.textPhoneNumber,
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
