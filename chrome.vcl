# Voice commands for chrome;
# Requires the following chrome extension: https://chrome.google.com/webstore/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb?hl=en 
include utilities/natoAlphabet.vch;
include websites/googlechat.vch;

# window
Exit = {Ctrl+Shift+w};
Cancel = {Esc};
Find = {Ctrl+f};
full screen = {Alt+Space} Wait(200) x;

# bookmarks
[show] bookmarks = {Ctrl+Shift+o};
bookmark = {Ctrl+d};
done =  HeardWord(click,Done);
Wait =  HeardWord(click,Wait);

# tab
Back = {Alt+Left};
Forward = {Alt+Right};
New = {Ctrl+t};
Close = {Ctrl+w};
Close 1..9  = Repeat($1 ,SendSystemKeys({Ctrl+w}));
Refresh = {Ctrl+r};

Next = {Ctrl+Tab};
Next 1..9 = {Ctrl+Tab_$1};
Previous = {Ctrl+Shift+Tab};
Previous 1..9 = {Ctrl+Shift+Tab_$1};

# address
Address = {Alt+d};
Copy Address = {Alt+d} Wait(300) {Ctrl+c};

# Page
home = {Home};
Up = {PgUp};
Down = {PgDn};
Down 1..9 = {PgDn_$1};
Up 1..9 = {PgUp_$1};
Print = {Ctrl+p};

# Navigate
Links = {Shift+F};

<natoAlphabet> (Go|go) = {$1} Wait(300) {Ctrl+Tab};
<natoAlphabet> <natoAlphabet> (Go|go) = {$1} {$2} Wait(300) {Ctrl+Tab};
<natoAlphabet> <natoAlphabet> <natoAlphabet> (Go|go) = {$1} {$2} {$3} Wait(300) {Ctrl+Tab};

# Settings
Extensions = {Ctrl+t}{Alt+d}"chrome://extensions/"{Enter};

# combinations
(close|delete) previous = {Ctrl+Shift+Tab}{Ctrl+w};
