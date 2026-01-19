import '../utils.dart';

class CheckboxTileFoodAllergieForm extends StatelessWidget {
  final bool? isSelected;
  final bool? isDisabled;
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

  const CheckboxTileFoodAllergieForm({
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
    this.isDisabled = false,
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
          onTap: isDisabled ?? false ? null : ontap,
          splashColor: Colors.transparent,
          leading: IgnorePointer(
            child: Checkbox(
              side: BorderSide(
                color: isDisabled ?? false ? kGrey : kDarkGrey,
                width: 1.5,
              ),
              visualDensity: VisualDensity.compact,
              fillColor: WidgetStateProperty.all<Color>(
                isSelected ?? false ? kGreen : kWhite,
              ),
              value: isSelected,
              onChanged: (bool? value) {},
            ),
          ),
          visualDensity: VisualDensity.compact,
          contentPadding: EdgeInsets.zero,
          title: Text(
            title ?? "",
            style: TextStyle(
              fontSize: titleSize ?? 14.sp,
              fontWeight: titleWeight ?? FontWeight.bold,
              color: isDisabled ?? false ? kGrey : kRichBlack,
            ),
          ),
        ),
      ),
    );
  }
}
