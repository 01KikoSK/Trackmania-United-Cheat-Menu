#include <iostream>
#include <Windows.h>

class CheatMenu {
public:
    void showMenu() {
        while (true) {
            system("cls");
            std::cout << "Dying Light 2: Stay Human Cheat Menu" << std::endl;
            std:cout << "-----------------------------------" << std::endl;
            std::cout << "1. God Mode" << std::endl;
            std::cout << "2. Infinite Stamina" << std::endl;
            std::cout << "3. Exit" << std::endl;
            int choice;
            std::cin >> choice;
            switch (choice) {
                case 1:
                    godMode();
                    break;
                case 2:
                    infiniteStamina();
                    break;
                case 3:
                    exit(0);
                default:
                    std::cout << "Invalid choice. Please try again." << std::endl;
                    Sleep(2000);
            }
        }
    }

private:
    void godMode() {
        // Code to enable god mode
    }

    void infiniteStamina() {
        // Code to enable infinite stamina
    }
};

int main() {
    CheatMenu menu;
    menu.showMenu();
    return 0;
}