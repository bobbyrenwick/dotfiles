for DOTFILE in .{function,alias,prompt,git-completion,virtualenvwrapper}; do
    [ -f "$DOTFILE" ] && source "$DOTFILE"
done

