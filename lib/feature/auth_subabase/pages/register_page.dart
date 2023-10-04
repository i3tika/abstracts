import 'package:abstracts/core/ui/_ui.dart';
import 'package:abstracts/feature/_feature.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController _userNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  GlobalKey<FormState> _fromKey = GlobalKey();
  bool isLoading = false;
  @override
  void initState() {
    _userNameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _userNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  // _isLoading() {}

  void _sigUp() async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        // physics: ScrollPhysics(),
        shrinkWrap: true,
        children: [
          Padding(
            padding: EdgeInsets.all(5),
            child: Form(
              key: _fromKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 15),
                  ATextField(
                    controller: _userNameController,
                    autofocus: false,
                    maxLength: 10,
                    hintText: 'enter',
                    labelText: 'userName',
                    textInputType: TextInputType.visiblePassword,
                    validatorFunc: (value) {
                      if (value == null || value.isEmpty) {
                        return 'email is empty';
                      }
                      final isValid =
                          RegExp(r'^[A-Za-z0-9_]{3,24}$').hasMatch(value);
                      if (!isValid) {
                        return '3-24 long ';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 15),
                  ATextField(
                    controller: _emailController,
                    autofocus: false,
                    maxLength: 1,
                    hintText: 'enter',
                    labelText: 'emial',
                    textInputType: TextInputType.emailAddress,
                    validatorFunc: (value) {
                      if (value == null || value.isEmpty) {
                        return 'email is empty';
                      }
                      final isValid =
                          RegExp(r'^[A-Za-z0-9_]{3,24}$').hasMatch(value);
                      if (!isValid) {
                        return '3-24 long ';
                      }
                      return null;
                      // value == null || value.isEmpty ? 'email is empty' :/ null;
                    },
                  ),
                  const SizedBox(height: 15),
                  ATextField(
                    controller: _passwordController,
                    autofocus: false,
                    maxLength: 10,
                    hintText: 'enter',
                    labelText: 'password',
                    textInputType: TextInputType.visiblePassword,
                    validatorFunc: (value) {
                      if (value == null || value.isEmpty) {
                        return 'reqired';
                      }
                      if (value.length < 6) {
                        return 'больше 6 числе';
                      }
                      return null;
                    },
                  ),
                  FilledButton(
                    onPressed: isLoading ? null : _sigUp,
                    child: Text('Register'),
                  ),
                  const SizedBox(height: 15),
                  ATextButton(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginINPage()),
                      );
                    },
                    title: 'У меня есть аккаунт',
                  ),
                  const SizedBox(height: 15),
                  AIconButtonW(
                    onTap: () {},
                    icons: Icon(Icons.add),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
