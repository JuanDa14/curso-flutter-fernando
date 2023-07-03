import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/config/theme/app_theme.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';
import 'package:yes_no_app/presentation/screens/chat/chat_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //MultiProvider => nos permite tener varios providers
    return MultiProvider(
      providers: [
        //ChangeNotifierProvider => nos permite escuchar los cambios de un provider
        //create: (_) => ChatProvider() => nos permite crear una instancia del provider
        ChangeNotifierProvider(create: (_)=> ChatProvider())
      ],
      child: MaterialApp(
        title: 'Yes No App',
        
        debugShowCheckedModeBanner: false,
        //Importando el theme
         theme: AppTheme(selectedColor: 1).theme(),
         //<========================>
        home:const ChatScreen(),
      ),
    );
  }
}