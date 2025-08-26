import 'package:go_router/go_router.dart';

goNavigate(context, String path) {
  GoRouter.of(context).push(path);
}
