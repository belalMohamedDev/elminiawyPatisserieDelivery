import 'package:flutter_dotenv/flutter_dotenv.dart';



class EnvVariable {
  EnvVariable._();

  static final EnvVariable instance = EnvVariable._();

  String _mapKey = '';


  /// Initializes environment variables based on the provided environment type.
  Future<void> init() async {

     await dotenv.load(fileName: '.env');

    // Consider adding error handling if ENV_TYPE is not found
    _mapKey = dotenv.get('MAP_KEY');
   
  }

  /// Indicates if the current environment is for development.
  String get mapKey => _mapKey ;
}
