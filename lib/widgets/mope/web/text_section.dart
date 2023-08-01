import 'package:core_module/core_module.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/gestures.dart';

import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  const TextSection({
    Key? key,
    required this.title,
    required this.texts,
    required this.textStyles,
    this.hasLink,
    this.wordsLink,
    this.onLinkPressed,
  }) : super(key: key);

  final String title;
  final List<String> texts;
  final List<TextStyle?> textStyles;
  final bool? hasLink;
  final String? wordsLink;
  final VoidCallback? onLinkPressed;

  @override
  Widget build(BuildContext context) {
    final List<String>? wordLink = wordsLink?.split(' ');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: NsjPadding.verticalSmall(context),
          child: Text(
            title,
            maxLines: 2,
            style: NsjText.titleSmall(context),
          ),
        ),
        Padding(
          padding: NsjPadding.verticalSmall(context),
          child: ColumnBuilder(
            mainAxisSize: MainAxisSize.min,
            itemBuilder: (BuildContext context, int index) {
              final String text = texts.elementAt(index);
              final textStyle = index < textStyles.length
                  ? textStyles[index]
                  : textStyles.last;

              if (hasLink != null &&
                  hasLink! &&
                  wordsLink != null &&
                  wordLink!.every(
                      (linkWord) => text.split(' ').contains(linkWord))) {
                final List<String> words = text.split(' ');
                final List<InlineSpan> spans = [];

                for (int i = 0; i < words.length; i++) {
                  if (wordLink.contains(words[i])) {
                    final linkSpan = TextSpan(
                      text: '${words[i]} ',
                      style: NsjText.bodyLarge(context)!.copyWith(
                        color: AnaColors.darkBlue,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()..onTap = onLinkPressed,
                    );
                    spans.add(linkSpan);
                  } else {
                    final textSpan =
                        TextSpan(text: '${words[i]} ', style: textStyle);
                    spans.add(textSpan);
                  }
                }
                return Padding(
                  padding: NsjPadding.verticalSmall(context),
                  child: RichText(
                    text: TextSpan(children: spans),
                  ),
                );
              }
              return Padding(
                padding: NsjPadding.verticalSmall(context),
                child: Text(
                  text,
                  style: textStyle,
                ),
              );
            },
            itemCount: texts.length,
          ),
        ),
      ],
    );
  }
}
