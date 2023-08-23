part of 'register_cubit.dart';

class RegisterState extends Equatable {
  final int pageIndex;
  final RegisterFormz registerForm;
  final PersonalInfoFormz personalInfoForm;
  final LoadDataState<void> registerState;

  const RegisterState({
    this.pageIndex = 0,
    required this.registerForm,
    required this.personalInfoForm,
    required this.registerState,
  });

  bool get isLastStep => pageIndex == 1;

  RegisterState copyWith({
    int? pageIndex,
    RegisterFormz? registerForm,
    PersonalInfoFormz? personalInfoForm,
    LoadDataState<void>? registerState,
  }) {
    return RegisterState(
      pageIndex: pageIndex ?? this.pageIndex,
      registerForm: registerForm ?? this.registerForm,
      personalInfoForm: personalInfoForm ?? this.personalInfoForm,
      registerState: registerState ?? this.registerState,
    );
  }

  @override
  List<Object?> get props => [
        pageIndex,
        registerForm,
        personalInfoForm,
        registerState,
      ];
}
