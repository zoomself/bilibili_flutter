import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageUtils {
  static const bool useCache = true;

  static Widget load(String url,
      {BoxFit? fit,
      double? width,
      double? height,
      String? placeHolderInAssets,
      String? errorHolderInAssets}) {
    if (useCache) {
      return _getWidgetWidthCache(url,
          fit: fit,
          width: width,
          height: height,
          placeHolderInAssets: placeHolderInAssets,
          errorHolderInAssets: errorHolderInAssets);
    }
    return _getWidget(url,
        fit: fit,
        width: width,
        height: height,
        placeHolderInAssets: placeHolderInAssets,
        errorHolderInAssets: errorHolderInAssets);
  }

  static Widget _getWidgetWidthCache(String url,
      {BoxFit? fit,
      double? width,
      double? height,
      String? placeHolderInAssets,
      String? errorHolderInAssets}) {
    return CachedNetworkImage(
      imageUrl: url,
      width: width,
      height: height,
      fit: fit,
      placeholder: placeHolderInAssets == null
          ? null
          : (context, url) {
              return _getPlaceHolderWithCache(context, url, placeHolderInAssets,
                  width: width, height: height, fit: fit);
            },
      errorWidget: (
        BuildContext context,
        String url,
        dynamic error,
      ) {
        return _getErrorHolderWidthCache(context, url, error,
            fit: fit,
            width: width,
            height: height,
            errorHolderInAssets: errorHolderInAssets);
      },
      fadeOutDuration: const Duration(milliseconds: 300),
      fadeInDuration: const Duration(milliseconds: 300),
    );
  }

  static Widget _getPlaceHolderWithCache(
    context,
    url,
    placeHolderInAssets, {
    BoxFit? fit,
    double? width,
    double? height,
  }) {
    return Image.asset(
      placeHolderInAssets,
      width: width,
      fit: fit,
      height: height,
    );
  }

  static Widget _getErrorHolderWidthCache(
    BuildContext context,
    String url,
    dynamic error, {
    BoxFit? fit,
    double? width,
    double? height,
    String? errorHolderInAssets,
  }) {
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

  ///--------------------- 无cache ------------------------

  static Widget _getWidget(String url,
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
