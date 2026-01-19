import '../utils.dart';

class CheckboxTileForm extends StatelessWidget {
  final bool? isSelected;
  final Function() ontap;
  final String? title;
  final String? subtitle;
  final double? titleSize;
  final double? subtitleSize;
  final FontWeight? titleWeight;
  final FontWeight? subtitleWeight;
  final double? minVerticalPadding;
  final bool? dense;
  final double? padding;

  const CheckboxTileForm({
    super.key,
    this.isSelected = false,
    required this.ontap,
    this.title = "",
    this.subtitle = "",
    this.titleSize,
    this.subtitleSize,
    this.titleWeight,
    this.subtitleWeight,
    this.minVerticalPadding,
    this.dense,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.all(color: isSelected ?? false ? kGreen : kStroke),
        borderRadius: BorderRadius.circular(16.r),
        color: kWhite,
      ),
      child: Padding(
        padding: EdgeInsets.all(padding ?? 0.0),
        child: ListTile(
          splashColor: Colors.transparent,
          leading: IgnorePointer(
            child: Checkbox(
              side: const BorderSide(color: kDarkGrey, width: 1.5),
              visualDensity: VisualDensity.compact,
              fillColor: WidgetStateProperty.all<Color>(
                isSelected ?? false ? kGreen : kWhite,
              ),
              value: isSelected,
              onChanged: (bool? value) {},
            ),
          ),
          onTap: ontap,
          visualDensity: VisualDensity.compact,
          contentPadding: EdgeInsets.zero,
          title: Text(
            title ?? "",
            style: TextStyle(
              fontSize: titleSize ?? 14.sp,
              fontWeight: titleWeight ?? FontWeight.bold,
              color: kRichBlack,
            ),
          ),
        ),
      ),
    );
  }
}
