import 'dart:developer';

import '../utils.dart';

class DateTileForm extends StatefulWidget {
  final bool? isSelected;
  final Function(DateTime, bool)? ontap;

  // final Function(DateTime, {bool val})? ontap;
  final String? title;
  final String? subtitle;
  final double? titleSize;
  final double? subtitleSize;
  final FontWeight? titleWeight;
  final FontWeight? subtitleWeight;
  final double? minVerticalPadding;
  final bool? dense;
  final double? padding;
  final DateTime? initialValue;
  final Function(DateTime)? onDateTimeChanged;

  const DateTileForm({
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
    this.initialValue,
    this.onDateTimeChanged,
  });

  @override
  State<DateTileForm> createState() => _DateTileFormState();
}

class _DateTileFormState extends State<DateTileForm> {
  DateTime? selectedDateTime;

  @override
  void initState() {
    selectedDateTime = widget.initialValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border:
            Border.all(color: widget.isSelected ?? false ? kGreen : kStroke),
        borderRadius: BorderRadius.circular(16.r),
        color: kWhite,
      ),
      child: Padding(
        padding: EdgeInsets.all(widget.padding ?? 10.w),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title ?? "",
                    style: TextStyle(
                      fontSize: widget.titleSize ?? 14.sp,
                      fontWeight: widget.titleWeight ?? FontWeight.w700,
                      color: kRichBlack,
                    ),
                  ),
                  gapH5,
                  InkWell(
                    onTap: () {
                      if (!widget.isSelected!) {
                        showModalBottomSheet(
                          enableDrag: false,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.r),
                              topRight: Radius.circular(20.r),
                            ),
                          ),
                          context: context,
                          builder: (context) {
                            return PaddedColumn(
                              padding: EdgeInsets.symmetric(
                                vertical: 5,
                                horizontal: 10.w,
                              ),
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    height: 4.h,
                                    width: 35.w,
                                    decoration: BoxDecoration(
                                      color: kRichBlack,
                                      borderRadius: BorderRadius.circular(10.r),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: double.infinity,
                                  height: 210.h,
                                  child: CupertinoDatePicker(
                                    initialDateTime:
                                        widget.initialValue ?? DateTime.now(),
                                    mode: CupertinoDatePickerMode.time,
                                    onDateTimeChanged: (DateTime? newDateTime) {
                                      selectedDateTime = newDateTime;
                                      setState(() {});
                                    },
                                  ),
                                ),
                                CustomButton(
                                  buttonText: "Save",
                                  ontap: () {
                                    widget.onDateTimeChanged!(
                                      selectedDateTime ?? widget.initialValue!,
                                    );
                                    Navigator.pop(context);
                                  },
                                ),
                                gapH10,
                              ],
                            );
                          },
                        );
                      }
                    },
                    child: Row(
                      children: [
                        Text(
                          Times().convertDateTimeToTimeString(
                            widget.initialValue ?? DateTime.now(),
                          ),
                          style: TextStyle(
                            fontSize: widget.subtitleSize ?? 12.sp,
                            fontWeight:
                                widget.subtitleWeight ?? FontWeight.w700,
                            color: widget.isSelected! ? kGrey : kPrimaryColor,
                          ),
                        ),
                        gapW1,
                        Icon(
                          Icons.arrow_drop_down,
                          size: 22.sp,
                          color: widget.isSelected! ? kGrey : kPrimaryColor,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            gapW10,
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CupertinoSwitch(
                  value: widget.isSelected ?? false,
                  onChanged: (value) {
                    widget.ontap!(
                      selectedDateTime ?? DateTime.now(),
                      value,
                      // val: value,
                    );
                  },
                  thumbColor: widget.isSelected ?? false
                      ? CupertinoColors.white
                      : kGrey,
                  activeTrackColor: kGreen,
                ),
                gapH2,
                Text(
                  "Skip this",
                  style: TextStyle(
                    fontSize: widget.subtitleSize ?? 12.sp,
                    fontWeight: widget.subtitleWeight ?? FontWeight.w600,
                    color: kRichBlack,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class WheelPickerExample extends StatefulWidget {
  const WheelPickerExample({super.key});

  @override
  State<WheelPickerExample> createState() => _WheelPickerExampleState();
}

class _WheelPickerExampleState extends State<WheelPickerExample> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 210.h,
      child: CupertinoDatePicker(
        mode: CupertinoDatePickerMode.time,
        onDateTimeChanged: (DateTime? newDateTime) {
          log(newDateTime.toString());
        },
      ),
    );
    // return SizedBox(
    //   width: double.infinity,
    //   child: Stack(
    //     alignment: Alignment.center,
    //     children: [
    //       _centerBar(context),
    //       Row(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           WheelPicker(
    //             builder: itemBuilder,
    //             controller: hoursWheel,
    //             style: wheelStyle,
    //             selectedIndexColor: kRichBlack,
    //           ),
    //           gapW20,
    //           WheelPicker(
    //             builder: itemBuilder,
    //             controller: minutesWheel,
    //             style: wheelStyle,
    //             selectedIndexColor: kRichBlack,
    //           ),
    //           gapW20,
    //           WheelPicker(
    //             itemCount: 2,
    //             builder: (context, index) {
    //               return Text(["AM", "PM"][index], style: textStyle);
    //             },
    //             selectedIndexColor: kRichBlack,
    //             initialIndex: (now.period == DayPeriod.am) ? 0 : 1,
    //             looping: false,
    //             style: wheelStyle.copyWith(
    //               shiftAnimationStyle: const WheelShiftAnimationStyle(
    //                 duration: Duration(seconds: 1),
    //                 curve: Curves.bounceOut,
    //               ),
    //             ),
    //           ),
    //         ],
    //       ),
    //     ],
    //   ),
    // );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
