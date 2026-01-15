import 'package:flutter/material.dart';
import 'package:pokedex_clean_app/infrastructure/datasources/api_poke_datasource_impl.dart';
import 'package:pokedex_clean_app/infrastructure/repositories/poke_repository_impl.dart';
import 'package:pokedex_clean_app/presentation/providers/poke_view_provider.dart';
import 'package:pokedex_clean_app/presentation/screens/main_screen.dart';
import 'package:provider/provider.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Must add this line.
  await windowManager.ensureInitialized();

  WindowOptions windowOptions = WindowOptions(
    size: Size(400, 600),
    center: true,
    title: "Pokédex Clean 🦎",
    backgroundColor: Colors.transparent,
    skipTaskbar: false,
    titleBarStyle: TitleBarStyle.hidden,
  );
  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => PokeViewProvider(
            repository: PokeRepositoryImpl(datasource: ApiPokeDatasourceImpl()),
          )..loadPokes(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainScreen(),
      ),
    );
  }
}
