part of 'profile_cubit.dart';

abstract class ProfileState {}

class ProfileInitial extends ProfileState {}

class ProfileLoading extends ProfileState {}

class ProfileSuccess extends ProfileState {}

class ProfileSignOut extends ProfileState {}

class ProfileDeleteSuccess extends ProfileState {}

class ProfileError extends ProfileState {
  final String error;

  ProfileError(this.error);
}

class ProfileLoaded extends ProfileState {
  final PersonalDetailsModel personalDetailsModel;

  ProfileLoaded(this.personalDetailsModel);
}
