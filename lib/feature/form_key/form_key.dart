import 'package:abstracts/core/ui/_ui.dart';

class PageScaffold extends StatelessWidget {
  const PageScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            FormWidgetKey(),
            const SizedBox(height: 50),
            Icon(Icons.info)
          ],
        ),
      ),
    );
  }
}

class FormWidgetKey extends StatefulWidget {
  FormWidgetKey({super.key});

  @override
  State<FormWidgetKey> createState() => _FormWidgetKeyState();
}

class _FormWidgetKeyState extends State<FormWidgetKey> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool success = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: 15),
          Text('Success'),
          const SizedBox(height: 15),
          ATextField(
            hintText: 'Email',
            autofocus: true,
            controller: emailController,
            validatorFunc: (value) {
              if (value!.trim().isEmpty) {
                return 'email req';
              }
              if (value.contains('@')) {
                setState(() {});
              } else {
                setState(() {});
                return S.of(context).input_email;
              }
              return null;
            },
            // inputFormatters: [],
          ),
          const SizedBox(height: 15),
          ATextField(
            hintText: 'password',
            autofocus: true,
            controller: passwordController,
            validatorFunc: (value) {
              if (value!.trim().isEmpty) {
                return S.of(context).subtitle_hivetest;
              }
              if (value.length < 8) {
                return '8+++';
              }
              return null;
            },
          ),
          const SizedBox(height: 15),
          success ? const SizedBox.shrink() : Icon(Icons.golf_course, size: 55),
          FilledButton(
            onPressed: () {
              setState(
                () {
                  if (formKey.currentState!.validate()) {
                    setState(() {
                      success = !success;
                    });
                    print('Success');
                  }
                },
              );
            },
            child: Text('Sim bit'),
          ),
        ],
      ),
    );
  }
}
