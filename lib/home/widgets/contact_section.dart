import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  static const Color accentColor = Color(0xff4F8CFF);

  Future<void> _openUrl(String url) async {
    final uri = Uri.parse(url);

    if (await canLaunchUrl(uri)) {
      await launchUrl(
        uri,
        mode: LaunchMode.externalApplication,
      );
    }
  }

  Future<void> _sendEmail() async {
    final uri = Uri(
      scheme: 'mailto',
      path: 'ankurmaity16@gmail.com',
      queryParameters: {
        'subject': 'Let’s Connect',
      },
    );

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 110,
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 1000,
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 60,
              vertical: 70,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              border: Border.all(
                color: accentColor.withOpacity(.35),
              ),
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
                // --------------------------------------------------
                // EYEBROW
                // --------------------------------------------------

                Text(
                  "GET IN TOUCH",
                  style: TextStyle(
                    color: accentColor,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                ),

                const SizedBox(height: 18),

                // --------------------------------------------------
                // TITLE
                // --------------------------------------------------

                const Text(
                  "Let's Build Something",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    height: 1.15,
                  ),
                ),

                const SizedBox(height: 20),

                // --------------------------------------------------
                // DESCRIPTION
                // --------------------------------------------------

                const SizedBox(
                  width: 650,
                  child: Text(
                    "Have an idea, product, or technical challenge? "
                    "Let's talk about how I can help turn it into "
                    "a scalable solution.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 17,
                      height: 1.7,
                    ),
                  ),
                ),

                const SizedBox(height: 35),

                // --------------------------------------------------
                // CTA
                // --------------------------------------------------

                _ContactButton(
                  icon: Icons.mail_outline,
                  label: "Start a Conversation",
                  color: accentColor,
                  onTap: _sendEmail,
                ),

                const SizedBox(height: 50),

                // --------------------------------------------------
                // CONTACT LINKS
                // --------------------------------------------------

                Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 30,
                  runSpacing: 20,
                  children: [
                    _ContactLink(
                      icon: Icons.email_outlined,
                      title: "Email",
                      value: "ankurmaity16@gmail.com",
                      onTap: _sendEmail,
                    ),

                    _ContactLink(
                      icon: Icons.business_center_outlined,
                      title: "LinkedIn",
                      value: "linkedin.com/in/ankurmaity",
                      onTap: () => _openUrl(
                        "https://linkedin.com/in/ankurmaity",
                      ),
                    ),

                    _ContactLink(
                      icon: Icons.code,
                      title: "GitHub",
                      value: "github.com/ankurmaityb",
                      onTap: () => _openUrl(
                        "https://github.com/ankurmaity",
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

//======================================================================
// CONTACT BUTTON
//======================================================================

class _ContactButton extends StatefulWidget {
  final IconData icon;
  final String label;
  final Color color;
  final VoidCallback onTap;

  const _ContactButton({
    required this.icon,
    required this.label,
    required this.color,
    required this.onTap,
  });

  @override
  State<_ContactButton> createState() => _ContactButtonState();
}

class _ContactButtonState extends State<_ContactButton> {
  bool hover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => hover = true),
      onExit: (_) => setState(() => hover = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.symmetric(
            horizontal: 26,
            vertical: 15,
          ),
          decoration: BoxDecoration(
            color: hover
                ? Colors.white
                : widget.color,
            borderRadius: BorderRadius.circular(30),
            boxShadow: hover
                ? [
                    BoxShadow(
                      color: widget.color.withOpacity(.35),
                      blurRadius: 25,
                    ),
                  ]
                : null,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                widget.icon,
                size: 20,
                color: hover
                    ? widget.color
                    : Colors.white,
              ),

              const SizedBox(width: 10),

              Text(
                widget.label,
                style: TextStyle(
                  color: hover
                      ? widget.color
                      : Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(width: 8),

              Icon(
                Icons.arrow_forward,
                size: 18,
                color: hover
                    ? widget.color
                    : Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//======================================================================
// CONTACT LINK
//======================================================================

class _ContactLink extends StatefulWidget {
  final IconData icon;
  final String title;
  final String value;
  final VoidCallback onTap;

  const _ContactLink({
    required this.icon,
    required this.title,
    required this.value,
    required this.onTap,
  });

  @override
  State<_ContactLink> createState() => _ContactLinkState();
}

class _ContactLinkState extends State<_ContactLink> {
  bool hover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => hover = true),
      onExit: (_) => setState(() => hover = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              widget.icon,
              size: 20,
              color: hover
                  ? ContactSection.accentColor
                  : Colors.white60,
            ),

            const SizedBox(width: 10),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.white54,
                  ),
                ),

                const SizedBox(height: 3),

                Text(
                  widget.value,
                  style: TextStyle(
                    fontSize: 13,
                    color: hover
                        ? ContactSection.accentColor
                        : Colors.white70,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}