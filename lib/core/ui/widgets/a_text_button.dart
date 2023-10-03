import 'package:abstracts/core/ui/_ui.dart';

class ATextButton extends StatelessWidget {
  const ATextButton({super.key, required this.onTap, required this.title});

  final void Function() onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(ASizes.r8),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(ASizes.p4),
          child: Text(
            title,
            style: TextStyle(fontSize: 16, color: Color(0xFF857BFB)),
          ),
        ),
      ),
    );
  }
}
