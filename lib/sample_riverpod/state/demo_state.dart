import 'package:freezed_annotation/freezed_annotation.dart';
part 'demo_state.freezed.dart';

@freezed
abstract class DemoState with _$DemoState {
  const factory DemoState() = DemoStateData;
  const factory DemoState.loading() = DemoStateLoading;
  const factory DemoState.error(dynamic error) = DemoStateError;
}