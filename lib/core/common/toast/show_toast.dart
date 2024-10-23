

import '../../../../core/common/shared/shared_imports.dart'; // Import the barrel file

class ShowToast {
  const ShowToast._();

  static void showToastErrorTop(
          {required String errorMessage, required BuildContext context}) =>
      toastification.show(
        context: context, // optional if you use ToastificationWrapper
        title: Text(errorMessage),
        alignment: Alignment.topCenter,
        animationDuration: const Duration(milliseconds: 200),

        margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
        closeOnClick: true,
        applyBlurEffect: true,

        autoCloseDuration: const Duration(seconds: 3),
        backgroundColor: const Color(0xFFED201B),
        progressBarTheme: ProgressIndicatorThemeData(
            color: Colors.white, linearMinHeight: 2.h),
        primaryColor: Colors.white,
        foregroundColor: Colors.white,

        style: ToastificationStyle.flatColored,

        type: ToastificationType.error,
      );

  static void showToastSuccessTop(
          {required String message, required BuildContext context}) =>
      toastification.show(
        context: context, // optional if you use ToastificationWrapper
        title: Text(message),
        alignment: Alignment.topCenter,
        animationDuration: const Duration(milliseconds: 200),

        margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
        showProgressBar: false,
        closeOnClick: true,
      

        autoCloseDuration: const Duration(seconds: 2),
   

        style: ToastificationStyle.fillColored,

        type: ToastificationType.success,
      );
}
