import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:intelicity_auth_microapp_flutter/shared/themes/app_colors.dart';
import 'package:intelicity_auth_microapp_flutter/shared/themes/app_text_styles.dart';
import 'package:intelicity_auth_web/app/home/presenter/stores/home_store.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeStore store = Modular.get<HomeStore>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: const [0.1, 0.9],
            colors: [AppColors.primaryPurple, AppColors.secundaryPurple],
          ),
        ),
        child: Center(
            child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          elevation: 20,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network(
                  'https://intelicity-assets.s3.sa-east-1.amazonaws.com/intelicity_logo.png',
                  height: 200,
                ),
                Text(
                  'Carregando informações',
                  style: AppTextStyles.headline1,
                ),
                const SizedBox(height: 8),
                CircularProgressIndicator(
                  color: AppColors.primaryPurple,
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}
