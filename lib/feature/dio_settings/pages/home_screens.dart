import 'package:abstracts/core/ui/_ui.dart';
import 'package:abstracts/feature/_feature.dart';
import 'package:abstracts/feature/dio_settings/data/models/post_model.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';

class HomeScreens extends StatelessWidget {
  const HomeScreens({super.key});

  awesomeSnackbarError(BuildContext context, String title, massage) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        behavior: SnackBarBehavior.floating,
        content: AwesomeSnackbarContent(
          title: title,
          message: massage,
          contentType: ContentType.failure,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // fetchData(context);
    return Scaffold(
      appBar: AppBar(title: Text('API')),
      body: SafeArea(
        child: InfoWidget(),
        //   BlocConsumer<PostCubit, PostState>(
        //     listener: (context, state) {
        //       // if (state is PostError) {
        //       //   // SnackBar snackBar = SnackBar(
        //       //   //   content: Text(state.error),
        //       //   //   backgroundColor: Colors.red,
        //       //   // );
        //       //   // ScaffoldMessenger.of(context).showSnackBar(snackBar);
        //       //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        //       //     elevation: 0,
        //       //     backgroundColor: Colors.transparent,
        //       //     behavior: SnackBarBehavior.floating,
        //       //     content: AwesomeSnackbarContent(
        //       //       title: state.error,
        //       //       message: '',
        //       //       contentType: ContentType.failure,
        //       //     ),
        //       //   ));
        //       // }
        //     },
        //     builder: (context, state) {
        //       if (state is PostLoading) {
        //         return Center(child: CircularProgressIndicator());
        //       }
        //       if (state is PostSuccess) {
        //         List<PostModel> posts = state.posts;
        //         // return buildPostListView(state.posts);
        //         return ListView.builder(
        //             itemCount: posts.length,
        //             itemBuilder: (BuildContext context, int index) {
        //               PostModel post = posts[index];
        //               return ListTile(
        //                 title: Text(
        //                   post.title ?? '404',
        //                   style: TextStyle(
        //                     fontWeight: FontWeight.bold,
        //                     color: Colors.purple,
        //                   ),
        //                 ),
        //                 subtitle: Text(posts[index].body ?? '404'),
        //                 trailing: Text(post.userId.toString()),
        //               );
        //             });
        //       }
        //       return Center(child: CircularProgressIndicator());
        //     },
        //   ),
      ),
    );
  }

  Widget buildPostListView(List<PostModel> posts) {
    return ListView.builder(
        itemCount: posts.length,
        itemBuilder: (BuildContext context, int index) {
          PostModel post = posts[index];
          return ListTile(
            title: Text(
              post.title ?? '',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              ),
            ),
            subtitle: Text(posts[index].body ?? ''),
            trailing: Text(post.userId.toString()),
          );
        });
  }
  // fetchData(BuildContext context) {
  //   BlocProvider.of<PostCubit>(context).fetchPost();
  // }
}
