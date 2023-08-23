import 'package:showit/core/index.dart';
import 'package:showit/dependencies/dependencies.dart';
import 'package:showit/utils/index.dart';

import '../forms/index.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit({
    required this.repository,
  }) : super(
          RegisterState(
            registerForm: RegisterFormz(
              email: EmailInput.pure(),
            ),
            personalInfoForm: PersonalInfoFormz(
              publicEmail: EmailInput.pure(),
            ),
            registerState: const LoadDataInitial(),
          ),
        );

  final AuthRepository repository;

  void onUsernameChanged(String username) {
    emit(
      state.copyWith(
        registerForm: state.registerForm.copyWith(
          username: DefaultTextInput.dirty(username),
        ),
      ),
    );
  }

  void onEmailChanged(String email) {
    emit(
      state.copyWith(
        registerForm: state.registerForm.copyWith(
          email: EmailInput.dirty(email),
        ),
      ),
    );
  }

  void onPasswordChanged(String password) {
    emit(
      state.copyWith(
        registerForm: state.registerForm.copyWith(
          password: PasswordInput.dirty(password),
        ),
      ),
    );
  }

  void onPublicEmailChanged(String publicEmail) {
    emit(
      state.copyWith(
        personalInfoForm: state.personalInfoForm.copyWith(
          publicEmail: EmailInput.dirty(publicEmail),
        ),
      ),
    );
  }

  void onInstagramChanged(String instagram) {
    emit(
      state.copyWith(
        personalInfoForm: state.personalInfoForm.copyWith(
          instagram: NoValidationInput.dirty(instagram),
        ),
      ),
    );
  }

  void onLinkedinChanged(String linkedin) {
    emit(
      state.copyWith(
        personalInfoForm: state.personalInfoForm.copyWith(
          linkedin: NoValidationInput.dirty(linkedin),
        ),
      ),
    );
  }

  void onTwitterChanged(String twitter) {
    emit(
      state.copyWith(
        personalInfoForm: state.personalInfoForm.copyWith(
          twitter: NoValidationInput.dirty(twitter),
        ),
      ),
    );
  }

  void onFacebookChanged(String facebook) {
    emit(
      state.copyWith(
        personalInfoForm: state.personalInfoForm.copyWith(
          facebook: NoValidationInput.dirty(facebook),
        ),
      ),
    );
  }

  Future<void> submitCreateAccount() async {
    try {
      emit(state.copyWith(registerState: const LoadDataLoading()));
      await repository.signUp(
        email: state.registerForm.email.value,
        password: state.registerForm.password.value,
      );
      emit(state.copyWith(registerState: const LoadDataSuccess()));
    } catch (e) {
      emit(state.copyWith(registerState: LoadDataFailed('$e')));
      emit(state.copyWith(registerState: const LoadDataInitial()));
    }
  }

  void onPageChanged(int pageIndex) {
    emit(state.copyWith(pageIndex: pageIndex));
  }
}
