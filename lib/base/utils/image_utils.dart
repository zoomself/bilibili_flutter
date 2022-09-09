import 'package:flutter/material.dart';

class ImageUtils {

  static Widget load(String url,
      {BoxFit? fit,
      double? width,
      double? height,
      String? placeHolderInAssets,
      String? errorHolderInAssets}) {
    return Image.network(
      url,
      fit: fit,
      width: width,
      height: height,
      errorBuilder: (
        context,
        error,
        stackTrace,
      ) {
        return _getErrorHolder(context, error, stackTrace,
            fit: fit,
            width: width,
            height: height,
            errorHolderInAssets: errorHolderInAssets);
      },
      loadingBuilder: (context, child, loadingProgress) {
        return _getPlaceHolder(context, child, loadingProgress,
            fit: fit,
            width: width,
            height: height,
            placeHolderInAssets: placeHolderInAssets);
      },
    );
  }

  static Widget _getErrorHolder(context, error, stackTrace,
      {BoxFit? fit,
      double? width,
      double? height,
      String? errorHolderInAssets}) {
    if (errorHolderInAssets == null) {
      return SizedBox(
        width: width,
        height: height,
        child: Center(
          child: Text(error),
        ),
      );
    }
    return Image.asset(
      errorHolderInAssets,
      width: width,
      fit: fit,
      height: height,
    );
  }

  static Widget _getPlaceHolder(context, child, loadingProgress,
      {BoxFit? fit,
      double? width,
      double? height,
      String? placeHolderInAssets}) {
    if (placeHolderInAssets == null) return child;
    if (loadingProgress == null) return child;
    return Image.asset(
      placeHolderInAssets,
      width: width,
      fit: fit,
      height: height,
    );
  }
}
