import '../core/core.dart';
import '../utils/utils.dart';

final apiClientProvider = Provider<ApiClient>((ref) => ApiClient(dio: Dio()));
final multiPartClientProvider =
    Provider<MultiPartClient>((ref) => MultiPartClient());
