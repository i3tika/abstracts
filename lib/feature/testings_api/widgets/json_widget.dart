import 'package:abstracts/core/ui/_ui.dart';
import 'package:abstracts/feature/_feature.dart';

class JsonWidgets extends StatelessWidget {
  const JsonWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    fetchData(context);
    return BlocConsumer<JsonPhdBBloc, JsonPhdBState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is JsonPhdBLoading) {
          return Center(child: CircularProgressIndicator());
        }
        if (state is JsonPhdBSuccess) {
          List<JsonPHDModels> modelsList = state.moldeList;

          return ListView.builder(
              itemCount: modelsList.length,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                // PostModel post = posts[index];
                return ListTile(
                  title: Text(
                    state.moldeList[index].title ?? '404',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurpleAccent,
                    ),
                  ),
                  subtitle: Text(state.moldeList[index].body ?? '404'),
                  trailing: Text(
                    state.moldeList[index].userId!.toString(),
                    style: TextStyle(
                      color: Colors.amber,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              });
        }
        return Center(
          child: Text('error'),
        );
      },
    );
  }

  fetchData(BuildContext context) {
    BlocProvider.of<JsonPhdBBloc>(context).add(GetJsonPhdBEvent());
  }
}
