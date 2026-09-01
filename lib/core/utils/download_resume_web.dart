// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

void downloadResume() {
  // Link to the Flutter web asset directly. A synthetic route such as
  // `/resume` can fall through to index.html on hosts without that rewrite,
  // which leaves the user with an HTML file named as a PDF.
  final anchor = html.AnchorElement(
    href: 'assets/assets/resume/Ankur_Maity_Resume.pdf',
  )
    ..download = 'Ankur_Maity_Resume.pdf'
    ..style.display = 'none';

  html.document.body?.children.add(anchor);
  anchor.click();
  anchor.remove();
}
