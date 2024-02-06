if status is-interactive
    zoxide init fish | source
    # Commands to run in interactive sessions can go here
    
    function fish_right_prompt -d "Write out the right prompt"
        set -l exit_code $status
        if test $exit_code -ne 0
            set_color --bold red
            echo -n "• "
            echo -n $exit_code
            set_color normal
        end
    end
end

# opam configuration
source /home/tu10ng/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true
abbr -a magit 'emacsclient -e "(magit-status)"'
abbr -a pac 'sudo pacman -Sy --needed'
abbr -a e 'emacsclient -r -n -a nvim'
abbr -a hd hexdump
abbr -a cd z
abbr -a gdb 'gdb -q'
abbr -a disk 'du -sh .'
abbr -a gc 'git clone'
abbr -a gc1 'git clone --depth=1'
abbr -a py python
abbr -a l 'ls -lFhtr'
abbr -a cat bat
abbr -a hw node\ \~/Downloads/query-chaoxing-worklist/dist/index.js\ \|\ rg\ \'小时\'\ \|\ rg\ \'待做\'\&
abbr -a vbox 'sudo mount -t vboxsf vbox ~/Documents/vbox/'
abbr -a npmi 'npm install'
abbr -a pi 'pip install'
abbr -a od 'objdump -M intel -S -d'
abbr -a pacs 'sudo pacman -Ss'
abbr -a pdf llpp
abbr -a pyc 'nuitka3 --remove-output '
abbr -a tm tmux\ new-session\ \\\;\ split-window\ -h\ -p\ 30\ -c\ \\\"\#\{pane_current_path\}\\\"\ \\\;\ select-pane\ -L
abbr -a mkdir 'mkdir -p'
abbr -a vim nvim
abbr -a w 'wget -nv -nc'
abbr -a lt 'ls -lFh -a -st --color | head -n 20'
abbr -a ff 'firefox'
