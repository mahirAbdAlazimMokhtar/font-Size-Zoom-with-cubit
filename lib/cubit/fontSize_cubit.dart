// ignore_for_file: file_names

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_zoom/cubit/states.dart';

class FontSizeCubit extends Cubit<ChangeFontSize> {
  FontSizeCubit() : super(InitialState());
  var fontSize = 40.0;

  static FontSizeCubit get(BuildContext context) {
    return BlocProvider.of(context);
  }

  void fontSizePlus(double value) {
    fontSize = value;
    emit(FontSizePlus());
  }
}
