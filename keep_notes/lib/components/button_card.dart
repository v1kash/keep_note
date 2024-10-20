import 'package:flutter/material.dart';
import '../utils/get_small_viewport.dart';

class ButtonCard extends StatelessWidget {
  final String child;
  final bool? showRipple;
  final VoidCallback? onClick;

  const ButtonCard({
    super.key,
    required this.child,
    this.showRipple = false,
    this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // if(onClick!=null)
        onClick!();
      },
      child: LayoutBuilder(builder: (context, constraint) {
        return Container(
          alignment: Alignment.center,
          height: isSmallPort(context)
              ? constraint.maxHeight * 0.25
              : constraint.maxHeight * 0.35,
          width: isSmallPort(context)
              ? MediaQuery.sizeOf(context).width * 0.25
              : MediaQuery.sizeOf(context).width * 0.1,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 253, 255, 187),
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                  color: Color.fromARGB(255, 121, 121, 104),
                  blurRadius: 10,
                  offset: Offset(0, 5))
            ],
          ),
          child: Text(child),
        );
      }),
    );
  }
}
