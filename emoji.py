import sys
from colorama import init, Fore, Style

# Set UTF-8 encoding for stdout
sys.stdout.reconfigure(encoding='utf-8')

# Initialize colorama
init(autoreset=True)

def display_colored_output():
    # Display a welcome message with colors and emojis
    print(f"{Fore.CYAN}🌟 Dart-Python Integration! 🎯")
    print(f"{Fore.GREEN}Christine says{Fore.RED} {Fore.GREEN}hello 😎 !{Style.RESET_ALL}")

def main():
    display_colored_output()

if __name__ == "__main__":
    main()
