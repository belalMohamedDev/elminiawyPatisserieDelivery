import '../../../../core/common/shared/shared_imports.dart'; // Import the barrel file

class CustomCacheManager {
  static CacheManager instance = CacheManager(
    Config(
      'customCacheKey',
      stalePeriod: const Duration(days: 30),
      maxNrOfCacheObjects: 100,
    ),
  );
}
