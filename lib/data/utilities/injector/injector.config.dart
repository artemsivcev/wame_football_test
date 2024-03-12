// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../domain/repositories/player_repository.dart' as _i6;
import '../../../presentation/screens/player_list/bloc/player_list_bloc.dart'
    as _i8;
import '../../providers/player_api_provider.dart' as _i3;
import '../../providers/player_storage_provider.dart' as _i5;
import '../../repositories/player_repository.dart' as _i7;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.PlayerApiProvider>(
        () => _i3.PlayerApiProvider(gh<_i4.Dio>()));
    gh.factory<_i5.PlayerStorageProvider>(() => _i5.PlayerStorageProvider());
    gh.factory<_i6.PlayerRepository>(() => _i7.PlayerRepositoryImpl(
          gh<_i5.PlayerStorageProvider>(),
          gh<_i3.PlayerApiProvider>(),
        ));
    gh.factory<_i8.PlayerListBloc>(
        () => _i8.PlayerListBloc(playerRepository: gh<_i6.PlayerRepository>()));
    return this;
  }
}
