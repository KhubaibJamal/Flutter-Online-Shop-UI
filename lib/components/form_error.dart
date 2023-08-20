import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../size_config.dart';

class FormError extends StatelessWidget {
  const FormError({
    super.key,
    required this.error,
  });

  final List<String> error;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        error.length,
        (index) => formErrorText(error: error[index]),
      ),
    );
  }

  Row formErrorText({String? error}) {
    return Row(
      children: [
        SvgPicture.asset(
          "assets/icons/Error.svg",
          height: getProportionateScreenHeight(14),
          width: getProportionateScreenHeight(14),
        ),
        SizedBox(width: getProportionateScreenWidth(10)),
        Text(error!),
      ],
    );
  }
}
