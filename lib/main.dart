import 'package:flutter/material.dart';
import 'package:streaming_amazing_flutter/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

//bloc
//https://github.com/maraj91/flutter_news_bloc/tree/master/lib
//https://marajhussain.medium.com/flutter-bloc-clean-architecture-best-practice-news-apis-3adb0e2012cc#:~:text=BLoC%20is%20the%20replacement%20of%20ViewModel%20in%20MVVM%20architecture.&text=It%20makes%20it%20easy%20to,the%20state%20of%20the%20application
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
            error: const Color(0xFFDC1637),
            secondary: const Color(0xFFF4F5FA),
            surface: const Color(0xFF818589),
            surfaceTint: const Color(0xFFE5E4E2)),
        primaryColor: const Color(0xFFFFFFFF),
        primaryColorDark: const Color(0xFF09090A),
        useMaterial3: true,
      ),
      home: const AppRoutes(),
    );
  }
}
