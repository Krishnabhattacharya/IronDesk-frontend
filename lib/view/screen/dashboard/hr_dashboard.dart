import 'package:irondesk/helper/base_screen_view.dart';
import 'package:irondesk/providers/viewmodel_provider.dart';
import 'package:irondesk/routes/app_routes.dart';

import 'package:irondesk/utils/utils.dart';
import 'package:irondesk/view/screen/dashboard/company_viewmodel.dart';
import 'package:irondesk/view/screen/dashboard/hr_tabs/hr_home_view.dart';
import 'package:irondesk/view/screen/dashboard/hr_tabs/hr_requests_view.dart';
import 'package:irondesk/view/screen/dashboard/hr_tabs/pending_users_view.dart';
import 'package:irondesk/view/screen/dashboard/hr_tabs/employees_directory_view.dart';
import 'package:irondesk/view/widgets/hr_glass_bottom_nav.dart';
import 'package:irondesk/view/widgets/hr_glass_side_nav.dart';
import 'package:irondesk/view/widgets/hr_shimmer_loader.dart'; // Added import
import 'package:irondesk/view/widgets/max_width_wrapper.dart';

class HRDashboard extends ConsumerStatefulWidget {
  const HRDashboard({super.key});

  @override
  ConsumerState<HRDashboard> createState() => _HRDashboardState();
}

class _HRDashboardState extends ConsumerState<HRDashboard> with BaseScreenView {
  int _selectedIndex = 0;
  late CompanyViewModel companyViewModel;
  @override
  void initState() {
    super.initState();
    companyViewModel = ref.read(ViewModelProvider.companyVM);

    companyViewModel.attachView(this);
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await companyViewModel.getPendingUsers();
      await companyViewModel.getAllEmployee();
      await companyViewModel.getEmployeeAttendence();
      await companyViewModel.getCompanyBasicDetails();
    });
  }

  final List<Widget> _pages = [
    const HRHomeView(),
    const PendingUsersView(),
    const EmployeesDirectoryView(),
    const HRRequestsView(),
  ];

  @override
  Widget build(BuildContext context) {
    final vm = ref.watch(ViewModelProvider.companyVM);
    final isWideScreen = MediaQuery.of(context).size.width > 800;

    final Widget content = vm.loading
        ? const HRShimmerLoader()
        : IndexedStack(index: _selectedIndex, children: _pages);

    return Scaffold(
      extendBody: !isWideScreen,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFFE0EAFC), Color(0xFFCFDEF3), Color(0xFFE2E2E2)],
            stops: [0.2, 0.5, 0.9],
          ),
        ),
        child: isWideScreen
            ? Row(
                children: [
                  HRGlassSideNav(
                    selectedIndex: _selectedIndex,
                    onTabSelected: (index) =>
                        setState(() => _selectedIndex = index),
                  ),

                  Expanded(
                    child: SafeArea(
                      child: MaxWidthWrapper(maxWidth: 1000, child: content),
                    ),
                  ),
                ],
              )
            : Stack(
                children: [
                  SafeArea(
                    bottom: false,
                    child: MaxWidthWrapper(child: content),
                  ),

                  HRGlassBottomNav(
                    selectedIndex: _selectedIndex,
                    onTabSelected: (index) =>
                        setState(() => _selectedIndex = index),
                  ),
                ],
              ),
      ),
    );
  }

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    // TODO: implement navigateToScreen
  }
}
