import 'utils.dart';

class CustomButton extends StatefulWidget {
  final bool isLoading;
  final String buttonText;
  final Function() ontap;
  final bool isSuffix;
  final bool isPrefix;
  final IconData suffixIcon;
  final IconData prefixIcon;
  final Color buttonColor;
  final Color loaderColor;
  final Color textColor;
  final Color borderColor;
  final double paddding;
  final double margin;
  final bool? isShadow;

  const CustomButton({
    super.key,
    this.isLoading = false,
    required this.buttonText,
    required this.ontap,
    this.isSuffix = false,
    this.isPrefix = false,
    this.suffixIcon = Icons.arrow_forward_ios,
    this.prefixIcon = Icons.arrow_back_ios,
    this.buttonColor = kPrimaryColor,
    this.loaderColor = Colors.white,
    this.textColor = Colors.white,
    this.borderColor = Colors.transparent,
    this.paddding = AppSizes.p14,
    this.margin = 0,
    this.isShadow = true,
  });

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: !widget.isLoading ? widget.ontap : null,
      child: Container(
        padding: EdgeInsets.all(widget.paddding),
        margin: EdgeInsets.all(widget.margin),
        decoration: BoxDecoration(
          border: Border.all(color: widget.borderColor),
          color: widget.buttonColor,
          borderRadius: BorderRadius.circular(30.r),
          boxShadow: widget.isShadow!
              ? [
                  const BoxShadow(
                    color: Color.fromRGBO(21, 38, 90, 0.3),
                    spreadRadius: 9,
                    blurRadius: 19.9,
                    offset: Offset(0, 12), // changes position of shadow
                  ),
                ]
              : [],
        ),
        child: widget.isLoading
            ? Center(
                child: SizedBox(
                  height: 22,
                  width: 22,
                  child: CupertinoActivityIndicator(
                    color: widget.loaderColor,
                    // strokeWidth: 2.0,
                  ),
                ),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (widget.isPrefix) gapW8 else const SizedBox.shrink(),
                  if (widget.isPrefix)
                    Icon(
                      widget.prefixIcon,
                      color: widget.textColor,
                      size: 18.sp,
                    )
                  else
                    const SizedBox.shrink(),
                  if (widget.isPrefix) gapW8 else const SizedBox.shrink(),
                  Text(
                    widget.buttonText,
                    style: GoogleFonts.sourceSans3(
                      fontSize: 14.sp,
                      color: widget.textColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  if (widget.isSuffix) gapW8 else const SizedBox.shrink(),
                  if (widget.isSuffix)
                    Icon(
                      widget.suffixIcon,
                      color: widget.textColor,
                      size: 18.sp,
                    )
                  else
                    const SizedBox.shrink(),
                ],
              ),
      ),
    );
  }
}
