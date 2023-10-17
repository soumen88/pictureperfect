import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:pictureperfect/controllers/authentication/model/sign_in_model.dart';
import 'package:pictureperfect/controllers/authentication/model/sign_up_model.dart';
import 'package:pictureperfect/controllers/database/isar_local_storage_manager.dart';
import 'package:pictureperfect/controllers/database/local_storage_keys.dart';
import 'package:pictureperfect/core/utils/logger_utils.dart';

class FirebaseAuthenticationUtils{

  final _logger = LoggerUtils();
  final _TAG = "FirebaseAuthenticationUtils";
  final _dbHelper = IsarLocalStorageManager.instance;
  ///Step 2 : Once Phone Otp is verified then proceed to this step
  Future<User?> signUpUser(SignUpModel signUpModel/*, PhoneAuthCredential phoneAuthCredential*/) async{
    try{
        FirebaseAuth auth = FirebaseAuth.instance;
        User? currentUser;
        UserCredential userCredential = await auth.createUserWithEmailAndPassword(
            email: signUpModel.userEmail, password: signUpModel.userPassword
        );

        currentUser = userCredential.user;
        if(userCredential.user != null){
          await userCredential.user!.updateDisplayName(signUpModel.userName);
          //await userCredential.user!.updatePhoneNumber(phoneAuthCredential);
          await userCredential.user!.reload();
          currentUser = userCredential.user;
          await saveUserDetails(currentUser!);
        }

        return Future.value(currentUser);
    }
    catch(exception){
      _logger.log(TAG: _TAG, message: "Error in sign up $exception");
      return Future.error("Error in sign up $exception");
    }
  }

  ///Step 1
  Future<void> validatePhoneNumber(String phoneNumberPassed) async{
    try{
      await FirebaseAuth.instance.verifyPhoneNumber(
          phoneNumber: phoneNumberPassed,
          verificationCompleted: (PhoneAuthCredential credential){
            _logger.log(TAG: _TAG, message: "Credential $credential");
          },
          verificationFailed: (FirebaseAuthException auth){
            _logger.log(TAG: _TAG, message: "Auth failed $auth");
          },
          codeSent: (String? verificationId, int? resendToken){
            _logger.log(TAG: _TAG, message: "Inside code sent $verificationId and resend token $resendToken");
          },
          codeAutoRetrievalTimeout: (String? verificationId){
            _logger.log(TAG: _TAG, message: "Inside auto retrival sent $verificationId");
          }
      );
    }
    catch(exception){
      _logger.log(TAG: _TAG, message: "Validate phone number error $exception");
      return Future.error("Validate phone number error $exception");
    }
  }
  
  Future<User?> signInUser(SignInModel signInModel) async{
      try{
        FirebaseAuth auth = FirebaseAuth.instance;
        UserCredential userCredential = await auth.signInWithEmailAndPassword(
            email: signInModel.userEmail,
            password: signInModel.userPassword
        );
        User? currentUser = userCredential.user;

        if(currentUser != null){
          _logger.log(TAG: _TAG, message: "Current user $currentUser");
          await saveUserDetails(currentUser);
        }
        return Future.value(currentUser);
      }
      catch(exception){
        _logger.log(TAG: _TAG, message: "Error in signin $exception");
        return Future.error("Error in signin $exception");
      }
  }

  Future<User?> initialize() async{
    FirebaseApp firebaseApp = await Firebase.initializeApp();

    User? currentUser = FirebaseAuth.instance.currentUser;

    if(currentUser != null){
      return Future.value(currentUser);
    }
    else{
      return Future.value(null);
    }
  }

  Future<User?> signInWithGoogle() async{
    try{
        FirebaseAuth auth = FirebaseAuth.instance;
        final GoogleSignIn googleSignIn = GoogleSignIn();
        final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
        if(googleSignInAccount != null){
          final GoogleSignInAuthentication signInAuthentication = await googleSignInAccount.authentication;
          AuthCredential credential = GoogleAuthProvider.credential(
            accessToken: signInAuthentication.accessToken,
            idToken: signInAuthentication.idToken
          );
          final userCredentials = await auth.signInWithCredential(credential);
          await saveUserDetails(userCredentials.user!);
          _logger.log(TAG: _TAG, message: "Gmail signin success ${userCredentials.user!}");
          return Future.value(userCredentials.user);
        }
        else{
          return Future.error("No gmail accounts found");
        }
    }
    catch(exception){
      _logger.log(TAG: _TAG, message: "Exception in google signin $exception");
      return Future.error("Exception in google signin $exception");
    }
  }
  
  Future<void> saveUserDetails(User userDetails) async{
    if(userDetails.email != null && userDetails.email!.isNotEmpty){
      await _dbHelper.saveStringDataToDb(LocalStorageKeys.USER_EMAIL.toString(), userDetails.email!);
      await _dbHelper.saveBooleanDataToDb(LocalStorageKeys.IS_USER_LOGGED_IN.toString(), true);
    }
  }
}