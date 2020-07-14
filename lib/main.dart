import 'package:country_code_picker/country_code_picker.dart';
import 'package:country_code_picker/country_localizations.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: [
        Locale('en', 'US'),
      ],
      localizationsDelegates: [
        CountryLocalizations
            .delegate, // Use for all countries name show in english
      ],
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFFC41A3B),
        primaryColorLight: Color(0xFFFBE0E6),
        accentColor: Color(0xFF1B1F32),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = 'Country Code Picker';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(4.0),
            ),
            child: CountryCodePicker(
              // Countries Name show in there mother tongue , you can change setting and show all default in english
              initialSelection: 'IN', // When App Start then default show
              showCountryOnly: false,
              showOnlyCountryWhenClosed:
                  false, // when choose country then show flag and country name not country code
              favorite: ['+91', 'IN'], // Show Up Side (Top)
              // Other Option
              enabled: true, // disabled/enable
              hideMainText: false, // only flag show/hide
              showFlagMain: true, // only country code/name show/hide
              showFlag: true, // popup side flag hide/show
              hideSearch: false, // Countries searchable show/hide
              showFlagDialog: true, // dialog side flag hide/show
              alignLeft: true,
              padding: EdgeInsets.all(16.0),
              // Also you can use more properties,,, let me show you...
            ),
          ),
        ),
      ),
    );
  }
}
