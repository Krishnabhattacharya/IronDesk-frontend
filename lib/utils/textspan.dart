import 'utils.dart';

class TextRichWidget extends StatelessWidget {
  final List<InlineSpan> children;
  final Color? color;
  final double? fontSize;

  const TextRichWidget({
    required this.children,
    this.color = kRichBlack,
    this.fontSize = 16,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        style: GoogleFonts.sourceSans3(
          textStyle: TextStyle(
            color: color,
            fontSize: fontSize,
            fontWeight: FontWeight.w400,
          ),
        ),
        children: children,
      ),
      textAlign: TextAlign.left,
    );
  }
}

TextSpan customTextSpan(String text, {FontWeight? fontWeight}) {
  return TextSpan(
    text: text,
    style: GoogleFonts.sourceSans3(
      textStyle: TextStyle(
        fontWeight: fontWeight,
      ),
    ),
  );
}

TextSpan customTextSpanLink(String text, {void Function()? onTap}) {
  return TextSpan(
    text: text,
    style: GoogleFonts.sourceSans3(
      textStyle: const TextStyle(
        color: kPrimaryRoyalBlue,
        fontSize: 16,
        fontWeight: FontWeight.w800,
      ),
    ),
    recognizer: TapGestureRecognizer()..onTap = onTap,
  );
}
