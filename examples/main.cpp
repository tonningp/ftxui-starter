#include <ftxui/component/screen_interactive.hpp>
#include <ftxui/component/component.hpp>
#include <ftxui/dom/elements.hpp>

using namespace ftxui;

int main() {
    auto screen = ScreenInteractive::TerminalOutput();
    auto component = Renderer([] {
        return window(text("Hello"), text("FTXUI in Codespaces!") | center) | border;
    });
    screen.Loop(component);
}
