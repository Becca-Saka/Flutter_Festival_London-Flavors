
import 'package:spicy_app/flavour_config.dart';
import 'package:spicy_app/main_common.dart';

void main() {
  mainCommon(FlavorConfig(
      appTitle: 'Spicy Staging App',
      buildType: 'staging',
      imageLocation: 'assets/dash-stage.png'));
}
