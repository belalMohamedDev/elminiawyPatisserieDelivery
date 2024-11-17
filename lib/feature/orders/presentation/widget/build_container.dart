import 'package:driver/core/common/shared/shared_imports.dart';

class BuildInfoContainer extends StatelessWidget {
  const BuildInfoContainer({
    super.key,
    this.onPressed,
    required this.icon,
    required this.text,
    this.isCardInformation = false,
    this.isPaied = false,
  });

  final VoidCallback? onPressed;
  final IconData icon;
  final String text;
  final bool isCardInformation;
  final bool isPaied;

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveUtils(context);
    return InkWell(
      onTap: onPressed,
      child: Container(
          height: responsive.setHeight(isCardInformation ? 4.2 : 3),
          decoration: BoxDecoration(
            color: isPaied ? ColorManger.green : ColorManger.brownLight,
            borderRadius: BorderRadius.circular(
                responsive.setBorderRadius(isCardInformation ? 5 : 1.2)),
          ),
          padding: EdgeInsets.symmetric(horizontal: responsive.setWidth(2)),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: ColorManger.white,
                size: responsive.setIconSize(isCardInformation ? 5 : 4),
              ),
              responsive.setSizeBox(width: 1.5),
              Flexible(
                child: Text(
                  text,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        fontSize:
                            responsive.setTextSize(isCardInformation ? 4 : 3),
                      ),
                  textAlign: TextAlign.start,
                ),
              ),
            ],
          )),
    );
  }
}
