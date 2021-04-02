# Voice commands for sourcetree
include edit.vch;

# view
previous = {Alt+f}{Esc}{Ctrl+Tab};
next = {Alt+f}{Esc}{Shift+Ctrl+Tab};
file status = {Ctrl+1};
history = {Ctrl+2};
search = {Ctrl+3};

# git flow
git flow = {Alt+Shift+f};
finish feature = HeardWord(click, finish, feature);
other action = HeardWord(click, other action);

# actions
stage = {Ctrl+Shift++};
Stage all = {Shift+Ctrl+c};
commit = {Shift+Ctrl+c};
unstage all = HeardWord(click, unstage all);

# file 
new = {Ctrl+n};

# repository
pull = {Shift+Ctrl+l};
push = {Shift+Ctrl+p};