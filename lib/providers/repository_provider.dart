import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:irondesk/data/remote/auth/auth_repo.dart';
import 'package:irondesk/data/remote/auth/auth_repo_impl.dart';
import 'package:irondesk/data/remote/company/company_repo.dart';
import 'package:irondesk/data/remote/company/company_repo_impl.dart';
import 'package:irondesk/providers/api_client_provider.dart';

final authRepositoryProvider = Provider<AuthRepo>(
  (ref) => AuthRepoImpl(apiClient: ref.read(apiClientProvider)),
);
final companyRepoProvider = Provider<CompanyRepo>(
  (ref) => CompanyRepoImpl(apiClient: ref.read(apiClientProvider)),
);
