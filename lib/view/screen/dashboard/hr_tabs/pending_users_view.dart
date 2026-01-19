import 'package:gap/gap.dart';

import 'package:irondesk/helper/base_screen_view.dart';
import 'package:irondesk/providers/viewmodel_provider.dart';
import 'package:irondesk/routes/app_routes.dart';
import 'package:irondesk/utils/utils.dart';
import 'package:irondesk/view/screen/dashboard/company_viewmodel.dart';
import 'package:irondesk/view/widgets/glass_container.dart';

class PendingUsersView extends ConsumerStatefulWidget {
  const PendingUsersView({super.key});

  @override
  ConsumerState<PendingUsersView> createState() => _PendingUsersViewState();
}

class _PendingUsersViewState extends ConsumerState<PendingUsersView>
    with BaseScreenView {
  late CompanyViewModel companyViewModel;
  @override
  void initState() {
    super.initState();
    companyViewModel = ref.read(ViewModelProvider.companyVM);

    companyViewModel.attachView(this);
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await companyViewModel.getPendingUsers();
    });
  }

  @override
  Widget build(BuildContext context) {
    final vm = ref.watch(ViewModelProvider.companyVM);
    return vm.loading
        ? const Center(child: CircularProgressIndicator())
        : ListView.builder(
            padding: EdgeInsets.all(16.w),
            itemCount: vm.getPendingUsersResponseModel.data!.length,
            itemBuilder: (context, index) {
              final user = vm.getPendingUsersResponseModel.data![index];
              return Padding(
                padding: EdgeInsets.only(bottom: 16.h),
                child: GlassContainer(
                  color: Colors.white,
                  opacity: 0.8,
                  padding: EdgeInsets.all(16.w),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 25.r,
                        backgroundColor: Colors.indigo.shade100,
                        child: Text(
                          "${user.name![0]}",
                          style: TextStyle(
                            color: Colors.indigo,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Gap(15.w),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${user.name}",
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.sp,
                              ),
                            ),
                            Text(
                              "${user.email}",
                              style: GoogleFonts.inter(
                                color: Colors.grey,
                                fontSize: 12.sp,
                              ),
                            ),
                            Text(
                              "Registered: ${user.createdAt}",
                              style: GoogleFonts.inter(
                                color: Colors.grey[600],
                                fontSize: 10.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 16.w,
                            vertical: 8.h,
                          ),
                        ),
                        onPressed: () {
                          context.pushNamed(
                            AppRoute.convertToEmployee.name,
                            extra: user,
                          );
                        },
                        child: Text(
                          "Approve",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
  }

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    // TODO: implement navigateToScreen
  }
}
