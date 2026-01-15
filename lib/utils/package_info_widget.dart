import 'utils.dart';

class PackageInfoWidget extends ConsumerWidget {
  final String appName;
  final String packageName;
  final String versionNo;
  final String buildNo;

  const PackageInfoWidget({
    required this.appName,
    required this.packageName,
    required this.versionNo,
    required this.buildNo,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
        color: kGrey.withOpacity(.07),
        borderRadius: BorderRadius.circular(8.r),
      ),
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 24.h),
      margin: EdgeInsets.symmetric(vertical: 24.h),
      child: Column(
        children: [
          Image.asset(
            'assets/icons/logo_lg.png',
            height: 30.h,
          ),
          gapH4,
          Text(
            "App Name : $appName",
            style: const TextStyle(
              color: kGrey,
              fontSize: 12,
            ),
          ),
          // Text(
          //   "Package : $packageName",
          //   style: const TextStyle(
          //     color: kGrey,
          //     fontSize: 12,
          //   ),
          // ),
          Text(
            "Version : $versionNo +$buildNo",
            style: const TextStyle(
              color: kGrey,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
