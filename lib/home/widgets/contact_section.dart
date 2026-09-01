import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  static const accentColor = Color(0xff4F8CFF);
  static const email = 'ankurmaity16@gmail.com';
  static const phone = '+91 76961 21156';

  Future<void> _launch(Uri uri) async {
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  }

  Future<void> _sendEmail() => _launch(
        Uri(
          scheme: 'mailto',
          path: email,
          queryParameters: {'subject': 'Let’s Connect'},
        ),
      );

  Future<void> _openWhatsApp() => _launch(
        Uri.parse('https://wa.me/917696121156'),
      );

  Future<void> _callPhone() => _launch(
        Uri(scheme: 'tel', path: '+917696121156'),
      );

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    final isMobile = screenWidth < 600;
    final contactLinkWidth = isMobile ? (screenWidth - 100) / 2 : 190.0;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 24,
        vertical: isMobile ? 64 : 110,
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1000),
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              horizontal: isMobile ? 20 : 60,
              vertical: isMobile ? 44 : 70,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              border: Border.all(color: accentColor.withOpacity(.35)),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  accentColor.withOpacity(.12),
                  Colors.white.withOpacity(.03),
                ],
              ),
            ),
            child: Column(
              children: [
                const Text(
                  'GET IN TOUCH',
                  style: TextStyle(
                    color: accentColor,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                ),
                const SizedBox(height: 18),
                Text(
                  "Let's Build Something",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: isMobile ? 32 : 42,
                    fontWeight: FontWeight.bold,
                    height: 1.15,
                  ),
                ),
                const SizedBox(height: 20),
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 650),
                  child: const Text(
                    'Have an idea, product, or technical challenge? '
                    "Let's talk about how I can help turn it into "
                    'a scalable solution.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 17,
                      height: 1.7,
                    ),
                  ),
                ),
                const SizedBox(height: 35),
                _ContactButton(onTap: _openWhatsApp),
                const SizedBox(height: 50),
                Wrap(
                  alignment: WrapAlignment.center,
                  spacing: isMobile ? 12 : 30,
                  runSpacing: isMobile ? 28 : 20,
                  children: [
                    _ContactLink(
                      width: contactLinkWidth,
                      iconAsset: 'assets/icons/email.svg',
                      title: 'Email',
                      value: email,
                      onTap: _sendEmail,
                    ),
                    _ContactLink(
                      width: contactLinkWidth,
                      iconAsset: 'assets/icons/phone.svg',
                      title: 'Phone',
                      value: phone,
                      onTap: _callPhone,
                    ),
                    _ContactLink(
                      width: contactLinkWidth,
                      iconAsset: 'assets/icons/linkedin.svg',
                      title: 'LinkedIn',
                      value: 'linkedin.com/in/ankurmaity',
                      onTap: () => _launch(
                        Uri.parse('https://linkedin.com/in/ankurmaity'),
                      ),
                    ),
                    _ContactLink(
                      width: contactLinkWidth,
                      iconAsset: 'assets/icons/github.svg',
                      title: 'GitHub',
                      value: 'github.com/ankurmaity',
                      onTap: () => _launch(
                        Uri.parse('https://github.com/ankurmaity'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ContactButton extends StatefulWidget {
  const _ContactButton({required this.onTap});

  final VoidCallback onTap;

  @override
  State<_ContactButton> createState() => _ContactButtonState();
}

class _ContactButtonState extends State<_ContactButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final foregroundColor =
        _isHovered ? ContactSection.accentColor : Colors.white;

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 15),
          decoration: BoxDecoration(
            color: _isHovered ? Colors.white : ContactSection.accentColor,
            borderRadius: BorderRadius.circular(30),
            boxShadow: _isHovered
                ? [
                    BoxShadow(
                      color: ContactSection.accentColor.withOpacity(.35),
                      blurRadius: 25,
                    ),
                  ]
                : null,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox.square(
                dimension: 20,
                child: SvgPicture.asset(
                  'assets/icons/whatsapp.svg',
                  colorFilter: ColorFilter.mode(
                    foregroundColor,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Text(
                'Start a Conversation',
                style: TextStyle(
                  color: foregroundColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 8),
              Icon(Icons.arrow_forward, size: 18, color: foregroundColor),
            ],
          ),
        ),
      ),
    );
  }
}

class _ContactLink extends StatefulWidget {
  const _ContactLink({
    required this.width,
    required this.iconAsset,
    required this.title,
    required this.value,
    required this.onTap,
  });

  final double width;
  final String iconAsset;
  final String title;
  final String value;
  final VoidCallback onTap;

  @override
  State<_ContactLink> createState() => _ContactLinkState();
}

class _ContactLinkState extends State<_ContactLink> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: SizedBox(
          width: widget.width,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AnimatedScale(
                scale: _isHovered ? 1.08 : 1,
                duration: const Duration(milliseconds: 180),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 180),
                  width: 56,
                  height: 56,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _isHovered
                        ? ContactSection.accentColor
                        : ContactSection.accentColor.withOpacity(.10),
                    border: Border.all(
                      color: _isHovered
                          ? ContactSection.accentColor
                          : Colors.white24,
                    ),
                  ),
                  child: SvgPicture.asset(
                    widget.iconAsset,
                    fit: BoxFit.contain,
                    colorFilter: ColorFilter.mode(
                      _isHovered ? Colors.white : Colors.white70,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Text(
                widget.title,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: _isHovered ? ContactSection.accentColor : Colors.white,
                ),
              ),
              const SizedBox(height: 4),
              SizedBox(
                width: widget.width,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    widget.value,
                    maxLines: 1,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.white54,
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
}
