🛡️ VPN Connection Automation Script

This script automates the connection process for VPNs requiring TOTP (Time-based One-Time Password) authentication. Manually checking mobile authenticators every time you need to reconnect is time-consuming; this tool integrates token generation directly into the login flow.
🚀 Why use this?

    Efficiency: No more reaching for your phone to get a 2FA code.

    Automation: Handles interactive terminal prompts automatically.

📋 Prerequisites

This script is optimized for Debian-based distributions. If you are using a different package manager (like dnf or pacman), please adjust the installation commands accordingly.

    [!IMPORTANT]

    If you run the script with sudo for OpenVPN/OpenConnect operations, ensure you preserve your environment variables by using the -E flag:
    Bash

    sudo -E ./vpn.sh

🛠️ Installation

The script relies on three main utilities. You can install them all at once:
Bash

sudo apt update && sudo apt install expect openconnect oathtool -y

Component Overview:

    Expect: Manages interactive terminal dialogues (waiting for prompts and sending responses).

    OpenConnect: A high-performance VPN client (compatible with Cisco AnyConnect).

    Oathtool: A command-line tool for generating TOTP tokens.

        Note: You will need the Secret Key (Base32) usually provided during your 2FA setup/QR code generation.

💻 Usage

    Clone this repository or download the vpn.sh file.

    Grant execution permissions:
    Bash

    chmod +x vpn.sh

    Run the script:
    Bash

    ./vpn.sh

🤝 Contributing

Feedback and improvements are welcome!
