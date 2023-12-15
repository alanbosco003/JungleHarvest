import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:rocket3/assets.dart';
import 'package:rocket3/high_scores.dart';
import 'package:rocket3/my_game.dart';
import 'package:rocket3/navigation/routes.dart';
import 'package:rocket3/ui/game_over_menu.dart';
import 'package:rocket3/ui/pause_menu.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Flame.device.fullScreen();

  await HighScores.load();
  await Assets.load();
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Routes.routes,
    ),
  );
}

//sample 

class MyGameWidget extends StatelessWidget {
  const MyGameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GameWidget(
      game: MyGame(),
      overlayBuilderMap: {
        'GameOverMenu': (context, MyGame game) {
          return GameOverMenu(game: game);
        },
        'PauseMenu': (context, MyGame game) {
          return PauseMenu(game: game);
        }
      },
    );
  }
}
