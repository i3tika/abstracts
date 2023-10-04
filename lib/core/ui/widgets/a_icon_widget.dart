import 'package:abstracts/core/ui/_ui.dart';

class AIconButtonW extends StatelessWidget {
  const AIconButtonW({
    super.key,
    required this.icons,
    required this.onTap,
  });

  final Icon icons;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      // borderRadius: BorderRadius.circular(15),
      color: Colors.transparent,
      child: InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(ASizes.p4),
            child: icons,
          )),
    );
  }
}
