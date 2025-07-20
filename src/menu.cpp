#include "menu.h"

Menu::Menu() = default;

void Menu::display() 
{
    std::cout << "Welcome to CheckItOut" << std::endl
              << "---------------------" << std::endl
              << "Need help? use checkit --help" << std::endl;
}