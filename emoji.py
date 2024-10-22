# display_message.py
from colorama import init, Fore, Style
import emoji

# Initialize colorama
init(autoreset=True)

def display_colored_output():
    # 🌟 Display a welcome message with colors and emojis
    print(f"{Fore.CYAN}Welcome to the {emoji.emojize(':sparkles:')} Dart-Python Integration! {emoji.emojize(':dart:')}")
    print(f"{Fore.GREEN}This is an example of {Fore.RED}colored text {Fore.GREEN}and {emoji.emojize(':smiling_face_with_sunglasses:')} emojis!{Style.RESET_ALL}")

def main():
    # 🔑 Call the function to display the output
    display_colored_output()

if __name__ == "__main__":
    main()
