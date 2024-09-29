import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme/provider/provider_theme.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ProviderTheme>(context);
        return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(" Home View" ,style:  TextStyle(fontSize: 30 ,fontWeight: FontWeight.bold),),
        ElevatedButton(onPressed: (){}, child: const Text("Hello Flutter")),
        SwitchListTile(
          title:  Text(themeProvider.getIsDarkTheme ? "Dark Mode" : "Light Mode"),
          value: themeProvider.getIsDarkTheme,
           onChanged: (val){
            themeProvider.setDarkTheme(themeValue: val);
          }
        ),

      ],
      ),
    );
  }
}