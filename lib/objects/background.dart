import 'package:flame/components.dart';
import 'package:rocket3/assets.dart';
import 'package:rocket3/my_game.dart';


class Background extends SpriteComponent {
  Background() : super(sprite: Assets.background);

  @override
  Future<void> onLoad() async {
    await super.onLoad();
    size = screenSize;
  }
}
