import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_zoom/cubit/fontSize_cubit.dart';
import 'package:font_zoom/cubit/states.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => FontSizeCubit(),
      child: BlocConsumer<FontSizeCubit, ChangeFontSize>(
        builder: (BuildContext context, state) {
          FontSizeCubit size = FontSizeCubit.get(context);
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: TextFormField(
                  maxLines: null,
                  style: TextStyle(fontSize: size.fontSize),
                ),
              ),
              Slider(
                value: size.fontSize,
                onChanged: (newSize) => size.fontSizePlus(newSize),
                max: 200,
                min: 30,
              )
            ],
          );
        },
        listener: (BuildContext context, state) {},
      ),
    );
  }
}
