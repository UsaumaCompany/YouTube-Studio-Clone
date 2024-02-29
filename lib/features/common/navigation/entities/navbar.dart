class NavBar {
  final int id;
  final String title;
  final String icon;
  final String outlinedIcon;
  final bool isImage;
  const NavBar(
      {required this.title,
        required this.id,
        required this.icon,
        required this.outlinedIcon,
        this.isImage = false});
}