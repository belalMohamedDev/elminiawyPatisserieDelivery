import 'package:driver/core/common/shared/shared_imports.dart';

class CustomDropdownButtonFormField extends StatefulWidget {
  final List<String> items;
  final String? value;
  final Function(String?)? onChanged;
  final InputDecoration? decoration;

  const CustomDropdownButtonFormField({
    super.key,
    required this.items,
    this.value,
    this.onChanged,
    this.decoration,
  });

  @override
  State<CustomDropdownButtonFormField> createState() =>
      _CustomDropdownButtonFormFieldState();
}

class _CustomDropdownButtonFormFieldState
    extends State<CustomDropdownButtonFormField> {
  final LayerLink _layerLink = LayerLink();
  OverlayEntry? _overlayEntry;
  bool _isOpen = false;
  String? _selectedValue;

  @override
  void initState() {
    super.initState();
    _selectedValue = widget.value;
  }

  OverlayEntry _createOverlayEntry() {
    RenderBox renderBox = context.findRenderObject() as RenderBox;
    Size size = renderBox.size;

    final responsive = ResponsiveUtils(context);

    return OverlayEntry(
      builder: (context) => GestureDetector(
        onTap: () {
          setState(() {
            _overlayEntry?.remove();
            _overlayEntry = null;
            _isOpen = false;
          });
        },
        child: Material(
          color: Colors.transparent,
          child: Stack(
            children: [
              Positioned(
                width: size.width,
                child: CompositedTransformFollower(
                  link: _layerLink,
                  showWhenUnlinked: false,
                  offset: Offset(0.0, responsive.setHeight(6.4)),
                  child: Material(
                    elevation: 4.0,
                    borderRadius:
                        BorderRadius.circular(responsive.setBorderRadius(3)),
                    color: ColorManger.white,
                    child: Padding(
                      padding: responsive.setPadding(
                        left: 3,
                        right: 3,
                        top: 2,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: widget.items.map((String item) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                _selectedValue = item;
                                _isOpen = false;
                                _overlayEntry?.remove();
                                _overlayEntry = null;
                              });
                              if (widget.onChanged != null) {
                                widget.onChanged!(item);
                              }
                            },
                            child: Container(
                              padding: responsive.setPadding(bottom: 2),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  item,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge!
                                      .copyWith(
                                        fontSize: responsive.setTextSize(3.5),
                                      ),
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _toggleDropdown() {
    if (_isOpen) {
      setState(() {
        _overlayEntry?.remove();
        _overlayEntry = null;
        _isOpen = false;
      });
    } else {
      setState(() {
        _overlayEntry = _createOverlayEntry();
        Overlay.of(context).insert(_overlayEntry!);
        _isOpen = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // Initialize the ResponsiveUtils to handle responsive layout adjustments
    final responsive = ResponsiveUtils(context);

    return GestureDetector(
      onTap: _toggleDropdown,
      child: CompositedTransformTarget(
        link: _layerLink,
        child: InputDecorator(
          decoration: widget.decoration ??
              const InputDecoration(
                border: OutlineInputBorder(),
              ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                _selectedValue ?? 'Select an option',
                // 13.sp,

                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: responsive.setTextSize(
                      3,
                    ),
                    color: ColorManger.black26),
              ),
              Icon(
                _isOpen
                    ? Icons.keyboard_arrow_up_rounded
                    : Icons.keyboard_arrow_down_rounded,
                color: ColorManger.black54,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _overlayEntry?.remove();
    _overlayEntry = null;
    super.dispose();
  }
}
