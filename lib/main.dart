import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme/const/theme_data.dart';
import 'package:theme/provider/provider_theme.dart';
import 'package:theme/screen/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_){
          return ProviderTheme();
        })
      ],
      child: Consumer<ProviderTheme>(
        builder: (context , themeProvider ,child) {
          return MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
          theme:  Style.themeData(isDarkMode: themeProvider.getIsDarkTheme, context: context),
          
            home: const  HomeView(),
          );
        }
      ),
    );
  }
}

// package install 
//? shared_preferences 
//? provider