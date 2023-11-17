import 'package:abstracts/core/ui/_ui.dart';
import 'package:abstracts/feature/testings_api/widgets/json_widget.dart';

class JsonPHDPage extends StatelessWidget {
  const JsonPHDPage({super.key});
  @override
  @Deprecated('')
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('API')),      
      body: SafeArea(
        child: JsonWidgets(),
      ),
    );
  } 
}
