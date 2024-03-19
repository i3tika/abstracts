import 'package:abstracts/core/ui/_ui.dart';
import 'package:abstracts/feature/test_shared_prefs/state/save_bool/save_bool_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bulleted_list/bulleted_list.dart';

@RoutePage()
class TestSharedPrefs extends StatefulWidget {
  const TestSharedPrefs({super.key});

  @override
  State<TestSharedPrefs> createState() => _TestSharedPrefsState();
}

class _TestSharedPrefsState extends State<TestSharedPrefs> {
  @override
  void initState() {
    BlocProvider.of<TelegramBloc>(context).add(CheckBannerIsExit());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // context.read<TelegramBloc>().add(CheckBannerIsExit());
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BulletedList(
            bullet: Text('•'),
            listItems: [
              Text(
                  'Lender Invest — это российская инвестиционная платформа, специализирующаяся на целевом финансировании бизнеса')
            ],
          ),
          BulletedList(
            bullet: Text('•'),
            listItems: [
              Text('Входит в ТОП-4 инвестиционных платформ России по выдаче ')
            ],
          ),
          BulletedList(
            bullet: Text('•'),
            listItems: [Text('Широкая диверсификация портфеля займов ')],
          ),
        ],
      ),
    );
  }

  // void onSimb(BuildContext context) {
  //   context.read<TelegramBloc>().add(CheckBannerIsExit());
  // }
}
