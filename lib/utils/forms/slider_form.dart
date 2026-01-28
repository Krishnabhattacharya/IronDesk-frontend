import '../utils.dart';

class SliderForm extends StatefulWidget {
  final String txt1;
  final String txt2;
  final int initialValue;
  final Function(int) onValueChanged;

  const SliderForm({
    super.key,
    required this.txt1,
    required this.txt2,
    required this.onValueChanged,
    required this.initialValue,
  });

  @override
  State<SliderForm> createState() => _SliderFormState();
}

class _SliderFormState extends State<SliderForm> {
  int user = 1;

  @override
  void initState() {
    user = widget.initialValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomSlidingSegmentedControl<int>(
      fromMax: true,
      isStretch: true,
      height: 38.h,
      innerPadding: EdgeInsets.all(5.w),
      initialValue: widget.initialValue,
      children: {
        1: Text(
          widget.txt1,
          style: GoogleFonts.workSans(
            color: user == 1 ? kBlack : kDarkGrey,
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        2: Text(
          widget.txt2,
          style: GoogleFonts.workSans(
            color: user == 2 ? kBlack : kDarkGrey,
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      },
      decoration: BoxDecoration(
        color: kFlashWhite,
        borderRadius: BorderRadius.circular(12.r),
      ),
      duration: const Duration(milliseconds: 150),
      thumbDecoration: BoxDecoration(
        color: kGreen,
        borderRadius: BorderRadius.circular(8.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.1),
            blurRadius: 2.0,
            spreadRadius: 1.0,
            offset: const Offset(
              0.0,
              2.0,
            ),
          ),
        ],
      ),
      curve: Curves.easeInOutCubic,
      onValueChanged: (v) {
        setState(() {
          user = v;
        });
        widget.onValueChanged(user);
      },
    );
  }
}
