import 'package:vk/features/auth/view/auth_login_screen.dart';
import 'package:vk/features/auth/view/auth_password_screen.dart';
import 'package:vk/features/main_screen/main_screen.dart';
import 'package:vk/features/profile/profile_screen.dart';
import 'package:vk/features/profile/widgets/media/photo_grid_screen.dart';

final routes = {
  '/' : (context) => const AuthLoginScreen(),
  '/authPassword' : (context) => const AuthPasswordScreen(),
  '/main_screen' : (context) => const MainScreen(),
  '/profile' : (context) => const ProfileScreen(),
  'photo_grid_screen' : (context) => const PhotoGridScreen(),
};