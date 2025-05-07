part of '../../../features/home_page/presentation/pages/home_page_page.dart';

class DrawerButtons extends StatelessWidget {
  const DrawerButtons({
    super.key,
    required this.drawerDividerWidth,
    required this.icon,
    required this.title,
    required this.onPressed,
  });

  final double drawerDividerWidth;
  final IconData icon;
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: drawerDividerWidth,
      child: ElevatedButton(
        onPressed: onPressed,
        style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
            padding:
                WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 5.w)),
            side: const WidgetStatePropertyAll(BorderSide.none),
            backgroundColor: WidgetStatePropertyAll(
                Theme.of(context).colorScheme.primaryContainer)),
        child: Center(
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Expanded(
              flex: 1,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Icon(icon,
                    color: Theme.of(context).textTheme.labelLarge?.color),
              ),
            ),
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Text(
                      title,
                      style: Theme.of(context).textTheme.labelLarge,
                      textAlign: TextAlign.start,
                    ),
                  ),
                  SizedBox(
                    width: 8.w,
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
