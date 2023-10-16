import 'package:flutter_riverpod/flutter_riverpod.dart';

    final boardinScreenProvider = StateNotifierProvider<BoardingScreenNotifier,bool>((ref) {
      return BoardingScreenNotifier();
    });


class BoardingScreenNotifier extends StateNotifier<bool> {
  BoardingScreenNotifier(): super(false);

  void changeStatus(bool status){
    state = status;
  }
  
}