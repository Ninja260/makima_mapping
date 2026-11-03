# Makima Mapping

Personal keyboard shortcut remapping for Dvorak keyboard layout, optimized for development productivity using [Makima](https://github.com/cyber-sushi/makima "Light weight input remapping tool for linux").

## Repository Structure

This repository uses a template-based approach to maintain shared keybindings across multiple layouts cleanly:

- **`.AT Translated Set 2 keyboard.toml`**: The base template containing shared remaps, settings, and commands.
- **`.AT Translated Set 2 keyboard::0.toml`**: Layout 0 specific extensions (remaps and commands).
- **`.AT Translated Set 2 keyboard::1.toml`**: Layout 1 specific extensions (remaps and commands).
- **`build_AT_layout.sh`**: A build script that merges the base template with layout-specific extensions to generate the final active config files (`AT Translated Set 2 keyboard::0.toml` and `AT Translated Set 2 keyboard::1.toml`).

## Usage

To rebuild the generated config files after making edits to the template or layout parts:

```bash
./build_AT_layout.sh
```
