import '../utils.dart';

class ListTileForm extends StatelessWidget {
  final bool? isSelected;
  final Function() ontap;
  final bool isCenterAlign;
  final String? title;
  final String? subtitle;
  final double? titleSize;
  final double? subtitleSize;
  final FontWeight? titleWeight;
  final FontWeight? subtitleWeight;
  final double? minVerticalPadding;
  final bool? dense;

  const ListTileForm({
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
    this.isCenterAlign = false,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.all(color: isSelected ?? false ? kGreen : kStroke),
        borderRadius: BorderRadius.circular(16.r),
        color: isSelected ?? false ? kGreen : kWhite,
      ),
      child: subtitle == ""
          ? ListTile(
              splashColor: Colors.transparent,
              dense: dense ?? false,
              minVerticalPadding: minVerticalPadding ?? 10.h,
              onTap: ontap,
              visualDensity: VisualDensity.compact,
              title: Text(
                title ?? "",
                style: TextStyle(
                  fontSize: titleSize ?? 14.sp,
                  fontWeight: titleWeight ?? FontWeight.w600,
                  color: kRichBlack,
                ),
                textAlign: isCenterAlign ? TextAlign.center : TextAlign.start,
              ),
            )
          : ListTile(
              splashColor: Colors.transparent,
              dense: dense ?? false,
              minVerticalPadding: minVerticalPadding ?? 10.h,
              onTap: ontap,
              visualDensity: VisualDensity.compact,
              title: Text(
                title ?? "",
                textAlign: isCenterAlign ? TextAlign.center : TextAlign.start,
                style: TextStyle(
                  fontSize: titleSize ?? 14.sp,
                  fontWeight: titleWeight ?? FontWeight.w600,
                  color: kRichBlack,
                ),
              ),
              subtitle: Text(
                subtitle ?? "",
                textAlign: isCenterAlign ? TextAlign.center : TextAlign.start,
                style: TextStyle(
                  fontSize: subtitleSize ?? 14.sp,
                  fontWeight: subtitleWeight ?? FontWeight.w600,
                  color: kRichBlack,
                ),
              ),
            ),
    );
  }
}
