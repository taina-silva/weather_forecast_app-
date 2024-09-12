import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:fpdart/fpdart.dart' hide State;
import 'package:weather_forecast_app/app/core/components/text/custom_text.dart';
import 'package:weather_forecast_app/app/core/theme/app_colors.dart';
import 'package:weather_forecast_app/app/core/utils/constants.dart';

class CustomAppBar extends StatefulWidget {
  final Either<String, Widget> title;
  final List<Widget>? trailing;
  final Widget? leading;
  final Color? backgroundColor;

  const CustomAppBar({
    super.key,
    required this.title,
    this.trailing,
    this.leading,
    this.backgroundColor,
  });

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget.backgroundColor ?? AppColors.primaryBackground,
        boxShadow: [Layout.boxShadow],
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: Space.normal),
            child: Column(
              children: [
                SizedBox(
                  height: Layout.appBarSize,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _renderAppBarLeading(context),
                      Expanded(
                        child: widget.title.fold(
                          (title) => GestureDetector(
                            onTap: canPop() ? () => Modular.to.pop() : null,
                            child: CustomText(
                              text: title,
                              textType: TextType.large,
                              fWeight: FWeight.bold,
                              color: AppColors.neutral900,
                            ),
                          ),
                          (widget) => Container(
                            alignment: Alignment.bottomLeft,
                            child: widget,
                          ),
                        ),
                      ),
                      SizedBox(
                          height: Layout.appBarTrailingHeight,
                          child: _renderAppBarTrailing(context)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  bool canPop() => Modular.to.canPop();

  Widget _renderAppBarLeading(BuildContext context) {
    if (widget.leading != null) {
      return Container(
        margin: const EdgeInsets.only(right: Layout.appBarLeadingAndTrailingWidth / 4),
        child: widget.leading!,
      );
    }

    if (canPop()) {
      return Container(
        margin: const EdgeInsets.only(right: 10),
        child: GestureDetector(
          onTap: () => Modular.to.pop(),
          child: const Icon(
            Icons.keyboard_arrow_left,
            color: AppColors.neutral900,
            size: Layout.appBarLeadingAndTrailingWidth,
            semanticLabel: 'Voltar para a página anterior',
          ),
        ),
      );
    }

    return const SizedBox();
  }

  Widget _renderAppBarTrailing(BuildContext context) {
    if (widget.trailing != null) {
      return ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: widget.trailing!.length,
        itemBuilder: (BuildContext context, int index) {
          return widget.trailing![index];
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 16);
        },
      );
    }

    const defaultTrailings = [];

    return ListView.separated(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: defaultTrailings.length,
      itemBuilder: (BuildContext context, int index) {
        return defaultTrailings[index];
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(width: 16);
      },
    );
  }
}