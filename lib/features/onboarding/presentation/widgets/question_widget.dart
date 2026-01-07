import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mental_health_app/core/theming/app_assets.dart';
import 'package:mental_health_app/core/theming/app_styles.dart';
import 'package:mental_health_app/core/widgets/app_text_button.dart';
import 'package:mental_health_app/features/onboarding/data/models/option_model.dart';
import 'package:mental_health_app/features/onboarding/presentation/widgets/selectable_option_tile.dart';

class QuestionWidget extends StatelessWidget {
  final String question;
  final List<OptionModel> options;
  final List<String> selectedValues;
  final Function(String) onSelect;
  final VoidCallback onNext;

  const QuestionWidget({
    super.key,
    required this.question,
    required this.options,
    required this.selectedValues,
    required this.onSelect,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32, left: 34, right: 34),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(question, style: AppStyles.h1, textAlign: TextAlign.center),
          const SizedBox(height: 32),
          Column(
            children: options.map((option) {
              final isSelected = selectedValues.contains(option.id);

              return Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: SelectableOptionTile(
                  icon: option.icon,
                  text: option.title,
                  isSelected: isSelected,
                  onTap: () => onSelect(option.title),
                ),
              );
            }).toList(),
          ),

          const Spacer(),
          AppTextButton(
            onPressed: selectedValues.isEmpty ? null : onNext,
            active: selectedValues.isNotEmpty,

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Continue",
                  style: AppStyles.h3.copyWith(color: Colors.white),
                ),
                const SizedBox(width: 8),
                SvgPicture.asset(
                  AppAssets.arrowRightIcon,
                  width: 20,
                  height: 20,
                  colorFilter: const ColorFilter.mode(
                    Colors.white,
                    BlendMode.srcIn,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 42),
        ],
      ),
    );
  }
}
