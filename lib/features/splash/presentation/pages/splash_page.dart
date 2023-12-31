import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:imei_scanner/core/theme/colors/app_colors.dart';
import 'package:imei_scanner/core/widgets/paint/logo_painter.dart';
import 'package:imei_scanner/features/splash/presentation/bloc/splash_bloc.dart';
import 'package:imei_scanner/router/name_routes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin {
  late final AnimationController _scaleController;
  late final AnimationController _opacityController;
  late final Animation<double> _scaleAnimation;
  late final Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();
    context.read<SplashBloc>().add(const SplashEvent());
    _scaleController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..addListener(() {
        setState(() {});
      });
    _scaleAnimation = TweenSequence<double>([
      TweenSequenceItem<double>(
        tween: Tween<double>(begin: 1, end: 0.95),
        weight: 1,
      ),
      TweenSequenceItem<double>(
        tween: Tween<double>(begin: 0.95, end: 1.5),
        weight: 2,
      ),
    ]).animate(_scaleController);
    _opacityController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    )..addListener(() {
        setState(() {});
      });
    _opacityAnimation = CurveTween(curve: Curves.easeIn).animate(
      _opacityController,
    );
    _scaleController.forward();
    Future.delayed(
      const Duration(milliseconds: 1500),
      () {
        _opacityController.forward();
      },
    );
  }

  @override
  void dispose() {
    _scaleController.removeListener(() {});
    _opacityController.removeListener(() {});
    _scaleController.dispose();
    _opacityController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashBloc, SplashState>(
      listener: (context, state) {
        if (state.isTimerFinished) {
          Navigator.pushReplacementNamed(context, Routes.main);
        }
      },
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.light,
        ),
        child: Scaffold(
          backgroundColor: ThemeColors.light.primary,
          body: Stack(
            children: [
              Positioned(
                left: 0,
                right: 0,
                bottom: 84,
                child: Center(
                  child: FadeTransition(
                    opacity: AlwaysStoppedAnimation(
                      1 - _opacityAnimation.value,
                    ),
                    child: const CircularProgressIndicator(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const Positioned.fill(
                child: Center(
                  child: CustomPaint(
                    painter: LogoPainter(),
                    size: Size(343, 87),
                  ),
                ),
              ),
              // Positioned.fill(
              //   child: Center(
              //     child: Transform.scale(
              //       scale: _scaleAnimation.value,
              //       child: FadeTransition(
              //         opacity: AlwaysStoppedAnimation(
              //           1 - _opacityAnimation.value,
              //         ),
              //         child: const CustomPaint(
              //           painter: LogoPainter(),
              //           size: Size(343, 87),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
