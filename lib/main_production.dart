import 'package:spicy_app/flavour_config.dart';
import 'package:spicy_app/main_common.dart';

void main() {
  mainCommon(FlavorConfig(
      appTitle: 'Spicy Production App',
      buildType: 'production',
      imageLocation: 'assets/dash-prod.png'));
}
