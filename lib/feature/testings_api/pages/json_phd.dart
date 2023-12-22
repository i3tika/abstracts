import 'package:abstracts/core/ui/_ui.dart';
import 'package:abstracts/feature/testings_api/widgets/json_widget.dart';
import 'package:auto_route/annotations.dart';
@RoutePage()
class JsonPHDPage extends StatelessWidget {
  const JsonPHDPage({super.key});
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('API')),      
      body: SafeArea(
        child: JsonWidgets(),
      ),
    );
  } 
}
