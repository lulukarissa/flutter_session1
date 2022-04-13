import 'package:flutter_lab1/models/session.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final sessionProvider = StateNotifierProvider<Session, SessionModel>((ref) {
  return Session(SessionModel(null));
});

class Session extends StateNotifier<SessionModel> {
  Session(SessionModel state) : super(state);

  setSession(String username) {
    state = SessionModel(username);
  }
}
