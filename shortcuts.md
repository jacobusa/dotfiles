# Keyboard Shortcuts

- Shortcuts for mac only
- These are listed from most general (work on most apps) to more specific (likely only work on that app and below) for that OS. They are cumilative as you move down

## macOS

### General

- `CMD + +` → Zoom In
- `CMD + -` → Zoom Out
- `CMD + C` → Copy
- `cmd + v` → Paste
- `CMD + TAB` → Application Switcher
- `CTRL + P` → Move up a selection in a menu
- `CTRL + N` → Move down a selection in a menu
- `CTRL + TAB` → Go to next tab
- `CTRL + SHIFT + TAB` → Go to previous tab
- `CMD + ,` → Pull up settings for most apps
- `CTRL + LEFT/RIGHT_ARROW` → Switch between active windows
- `CMD + \` ` → Next Instance of App
- `CMD + W ` → Delete Window
- `CMD + Q ` → Quit App
- `CMD + N ` → New command (context specific but universal)
- `CMD + OPTION + D ` → Toggle home dock visibility
- `CMD + K ` → # Global search in some contexts

### Tiling/Raycast (Need to setup manually through settings)

- `CMD + SPACE` → Open raycast
- `CMD + OPTION + RIGHT/LEFT/UP/BOTTOM_ARROW` → navigate halves
- `CMD + SPACE + V` → Open clipboard history
- `CMD + ENTER` → Spawn the Wezterm terminal
- `CMD + 1` → Terminal
- `CMD + 2` → Browser
- `CMD + 3` → IDE/Cursor
- `CMD + 4` → Parallels/Ubuntu
- `CMD + 5` → Notion
- `CMD + 6` → Linear

### Wezterm

- `CMD + T` → New window
- `CMD + \` ` → Next Instance of Wezterm
- `CMD + \` → Split Horizontal
- `CMD + ]` → Split Vertical
- `CMD + H/J/K/L` → Navigate within a split screen
- `CMD + SHIFT + H/J/K/L` → Control size of pane
- `CMD + SHIFT + a` → Power function that opens folder in neovim, agent panel, and terminal pane layout. Good with top right window focus
- `CMD + T/W` → Open/close pane
- `CTRL + \`` → Focus top right window, useful for hiding/showing bottom terminal and side agent pane
- `ALT + {number}` → Open numbered tabs
- `CTRL + TAB` → Go to next tab
- `CTRL + SHIFT + TAB` → Go to previous tab
- `CTRL + R` → history finder
- `CTRL + T` → fuzzy fzf file finder
- `CTRL + W` → delete word go back on prompt
- `CTRL + A` → go back entire line on prompt
- `CTRL + E` → go back entire line on prompt
- `OPTION + RIGHT/LEFT_ARROW + E` → navigate on line on prompt
- `<ANY_CLI_TOOL> + TAB` → completions menu
- `<ANY_CLI_TOOL> + CTRL + P/N` → completions cycle from history
- `<ANY_CLI_TOOL> ** + TAB` → enhanced fuzzy completion

### Neovim

- `<leader>` === `SPACE`
- `insertmode to normalmode` → Go from insert mode to normal mode customization
- `ESCAPE` → Escapes most actions. also try q
- `CTRL + W THEN s` → Split Horizontal
- `CTRL + W THEN v` → Split Vertical
- `CTRL + J/K/H/L` → Navigate within a split screen
- `CTRL + W THEN J/K/H/L` → Navigate within a split screen
- `CTRL + W THEN CTRL + W` → Navigate to next split screen
- `CTRL + O` → Go back to last thing you touched
- `U` → Undo
- `CTRL + R` → Redo
- `CTRL + SPACE` → Autocomplete help
- `<leader> + F` → Telescope file finding
- `<leader> + F + G` → Live Grep through files
- `<leader> + E` → Neotree Toggle
- `<leader> + C + M` → LSP servers
- `<leader>ff` → Telescipe file filder
- `<leader>sg` → Grep finder
- `<leader>xx` → View file diagnostics
- `<leader>ca` → View code actions
- `<leader>fb` → View open files/buffers
- `<leader>|` → Split vertical
- `<leader>-` → Split horizontal
- `<leader>sh` → See help pages
- `<leader>st` → Search for todos
- `<leader>sk` → Find keymaps
- `<leader>sk` → Find keymaps
- `<leader>l` → Launch Lazy
- `<leader>ul` → Toggle line numbers
- `<leader>sr` → Global search replace
- `<leader>g` → Lazy git commands
- `<leader>ft` → Launch terminal from neovim. Type exit or CTRL + D to exit
- `SHIFT + K` → Show hover documentation
- `normalmode CTRL + P` → Telescope file finding
- `insertmode CTRL + P/N` → Autocomplete menu
- `normalmode CTRL + N` → Neotree toggle
- `filetreefocus A` → Add new directory or file
- `G + H ` → Info window
- `G + D ` → Go to definition
- `G + R ` → Go to Reference
- `:` → Colon. Comamnd line

### Cursor

- `CMD + SHIFT + J` → Cursor Settings
- `CMD + B` → File tree toggle
- `CMD + L` → Agent Chat toggle, works with highligted text aswell
- `CMD + E` → Agent Chat toggle
- `CMD + OPTION + S` → Agent Chats List toggle
- `CMD + SHIFT + E` → Focus file tree and can navigate using h/j/k/l
- `CTRL + W THEN s` → Split Horizontal
- `CTRL + W THEN v` → Split Vertical
- `CTRL + J/K/H/L` → Navigate within a split screen
- `CTRL + W THEN J/K/H/L` → Navigate within a split screen
- `CTRL + W THEN CTRL + W` → Navigate to next split screen
- `CTRL + O` → Go back to last thing you touched
- `CTRL + SHIFT + G` → Toggle source control
- `U` → Undo
- `CTRL + R` → Redo
- `CMD + P` → File window
- `CMD + SHIFT + P` → Command window
- `CTRL + \` ` → Terminal Window
- `G + H ` → Info window
- `filetreefocus L` → Open file in editor
- `filetreefocus ENTER` → Rename file
- `filetreefocus H/J/K/L` → Navigate tree
- `llmchatmode SHIFT + TAB` → Agent Chat toggle
- `llmchatmode CMD + /` → Agent Chat toggle
- `llmchatmode ESCAPE` → Exit agent chat toggle and go back to code
- `llmchatmode CTRL + RETURN` → While generating, queue message
- `llmchatmode CMD + SHIFT + BACKSPACE` → While generating, queue message
- `llmchatmode CMD + RETURN` → With suggested changes, accept all changes made
- `llmchatmode CMD + T` → New chat tab
- `llmchatmode CMD + T` → New chat tab
- `llmchatmode CTRL + TAB` → Cycle through chat tabs
- `llmchatmode CTRL + W` → Close chat window
- `llmchatmode @` → Add context to chat
- `llmchatmode /` → Slash commands and functions
- `CMD + K` → Toggle chat inline edit
- `ESCAPE` → Close inline edit

## Linux

### i3

- `$mod` === `OPTION`
- `$mod + SPACE` → Launch application launcher
- `$mod + 1` → Terminal
- `$mod + 2` → Browser
- `$mod + 3` → Cursor/NVIM
- `$mod + 4` → Anything
