class LoginState {
  const LoginState({
    this.phone = '',
    this.password = '',
    this.isLoading = false,
  });

  final String phone;
  final String password;
  final bool isLoading;

  LoginState copyWith({
    String? phone,
    String? password,
    bool? isLoading,
  }) {
    return LoginState(
      phone: phone ?? this.phone,
      password: password ?? this.password,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
