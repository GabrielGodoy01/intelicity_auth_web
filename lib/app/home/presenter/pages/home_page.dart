import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:intelicity_auth_microapp_flutter/presenter/ui/pages/landing_page.dart';
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
    return LandingPage(
      child: Column(
        children: [
          Text(
            'Carregando informações',
            style: AppTextStyles.headline1,
          ),
          const SizedBox(height: 8),
          CircularProgressIndicator(
            color: AppColors.primaryBlue,
          )
        ],
      ),
    );
  }
}
