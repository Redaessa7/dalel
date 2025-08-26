import 'package:go_router/go_router.dart';

void goNavigate(context, String path) {
  GoRouter.of(context).push(path);
}
void goNavigatePushReplacement(context, String path) {
  GoRouter.of(context).pushReplacement(path);
}
