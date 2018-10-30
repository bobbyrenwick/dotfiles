export PATH="/usr/local/opt/python/libexec/bin:$PATH"

for file in ~/.{alias,function,git-completion,prompt,virtualenvwrapper}; do
    [ -r "$file" ] && source "$file"
done
unset file

