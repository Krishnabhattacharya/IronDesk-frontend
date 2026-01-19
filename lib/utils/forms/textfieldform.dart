import '../utils.dart';

class TextFieldForm extends StatefulWidget {
  final String hintTxt;
  final IconData icon;
  final String labelTxt;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final void Function(String) onChanged;
  final bool? isPassword;
  final bool? isFill;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLength;

  const TextFieldForm({
    super.key,
    required this.hintTxt,
    required this.icon,
    required this.labelTxt,
    required this.controller,
    required this.keyboardType,
    required this.onChanged,
    this.isPassword = false,
    this.isFill = false,
    this.focusNode,
    this.textInputAction = TextInputAction.done,
    this.inputFormatters,
    this.maxLength,
  });

  @override
  State<TextFieldForm> createState() => _TextFieldFormState();
}

class _TextFieldFormState extends State<TextFieldForm> {
  bool? isPasswordi = false;

  @override
  void initState() {
    isPasswordi = widget.isPassword ?? false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        useMaterial3: false,
        colorScheme: const ColorScheme.light(
          primary: kBlack,
        ),
      ),
      child: TextFormField(
        enableInteractiveSelection: false,
        textInputAction: widget.textInputAction,
        focusNode: widget.focusNode,
        onChanged: widget.onChanged,
        controller: widget.controller,
        keyboardType: widget.keyboardType,
        inputFormatters: widget.inputFormatters,
        maxLength: widget.maxLength,
        obscureText: isPasswordi ?? false,
        decoration: InputDecoration(
          fillColor: kInputFeild,
          filled: widget.isFill,
          suffixIcon: (widget.isPassword ?? false)
              ? (isPasswordi ?? false)
                  ? InkWell(
                      splashColor: Colors.transparent,
                      onTap: () {
                        isPasswordi = false;
                        setState(() {});
                      },
                      child: Padding(
                        padding: EdgeInsets.all(10.w),
                        child: const ImageIcon(
                          AssetImage("assets/icons/Hide.png"),
                        ),
                      ),
                    )
                  : InkWell(
                      splashColor: Colors.transparent,
                      onTap: () {
                        isPasswordi = true;
                        setState(() {});
                      },
                      child: Padding(
                        padding: EdgeInsets.all(10.w),
                        child: const ImageIcon(
                          AssetImage("assets/icons/Show.png"),
                        ),
                      ),
                    )
              : null,
          prefixIcon: Icon(
            widget.icon,
          ),
          labelText: widget.hintTxt,
          hintText: widget.labelTxt,
          labelStyle: const TextStyle(
            color: kGrey,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: kRichBlack,
            ),
            borderRadius: BorderRadius.circular(4.r),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: kGrey,
            ),
            borderRadius: BorderRadius.circular(4.r),
          ),
        ),
      ),
    );
  }
}
