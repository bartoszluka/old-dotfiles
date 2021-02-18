function fish_vi_cursor
    # Emulates vim's cursor shape behavior
    # Set the normal and visual mode cursors to a block
    set -U fish_cursor_default block
    # Set the insert mode cursor to a line
    set -U fish_cursor_insert line
    # Set the replace mode cursor to an underscore
    set -U fish_cursor_replace_one underscore
    # The following variable can be used to configure cursor shape in
    # visual mode, but due to fish_cursor_default, is redundant here
    set -U fish_cursor_visual block
end