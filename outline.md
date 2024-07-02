[toc]

## Vim 

### Vim's philosophy

Two core principles color a lot of Vim's design.

***1. You can work quicker by keeping your hands on the keyboard and keeping them close to the home keys.***

So Vim motions are built around using your keyboard rather than the mouse or even the arrow keys. 
Once you get comfortable using them, Vim motions are quite addictive, and you'll find yourself missing them
when you use other text editors and programs.

***2. You spend a significant amount of time editing code, probably much more time than you spend writing full-formed code.***

So Vim is designed to give you a mode specifically for inputting text, insert mode, and a mode specifically for editing,
normal mode. When we talk about Vim motions, we're talking about the commands you run in normal mode for getting around
the document and for automating repetitive editing tasks.

### Learning Vim motions vs learning Vim

Learning Vim motions can be transferrable learning! Many IDEs come with a plugin or setting available to enable Vim motions,
giving you practice with Vim motions while still enjoying the perks of an IDE. This can be the best of both worlds!
Everything you love about Vim and everything you love about your IDE.

This can be basically separated from learning Vim--learning Vim motions doesn't mean you have to use Vim, or vice-versa.
Though many people do use Vim (or Neovim) as their primary code editor, few people make it their primary code editor
from day 1 of learning to code or learning Computer Science. Still, that Vim is lighter than an IDE, faster than an IDE,
more configurable than IDE, and available pre-installed on most machines unlike an IDE
has led many to make it their code editor of choice.


### Stuck?
- `:help [cmd]` to get the documentation for anything
    - `:help :q` gets info on the quit command, :q
    - `:help q` gets info on the q motion/command for macros

### visual-normal-insert modes

- **insert mode** is what you're most familiar with when using a text editor. You push keys on your keyboard
and they appear on the page on your screen. You can get to insert mode from normal mode by pressing `i`.
You should see a message somewhere at the bottom on your screen indicating you've entered normal mode,
something like `-- INSERT --`.

- **normal mode** is where you can execute Vim motions to move around the doc, execute commands, etc.
You can get back to normal mode from insert mode by pressing the `ESC` key.

- **visual mode** is where you can highlight text to copy/cut/delete. From normal mode,
    - `v` gets you into visual mode. You can highlight letter by letter, line by line,
    using Vim motions to move around.
    - `<SHIFT> v` gets you into visual line mode. This highlights whole lines at a time.
    - `<CTRL> v` gets you into block visual mode. This highlights blocks of code rather than whole lines.

### Getting around
| Command | Usage |
|---|---|
| `:Explore` | Enters an interactive file explorer window |
| `hjkl` | move left, down, up, and right, respectively |
| `<C-d>` and `<C-u>` | move half a page down and half a page up, respectively |
| `gg` | start of doc |
| `G` | end of doc |
| `[#]gg` | goes to a specific line # |
| `ma` | inserts a location marker (e.g., `a` in this command) |
| `'a` or `[backtick]a` | goes to marker `a` |
| `''` | goes to previous location |
| `0` | beginning of line |
| `$` | end of line |

### Jump into insert
- `i` to insert before the cursor and `I` to insert before the first word on the line.
- `a` to insert after the cursor and `A` to insert after the last character on the line.
- `dw` to **d**elete a **w**ord
- `ce` to **c**hange to the **e**nd of a word
- `viwc` to select in **v**isual **i**nside the **w**ord and **c**hange.

### Automatting
- `.` repeats the previous edit command (`i`, `I`, `a`, etc.) and the edits made at the current location.
    - if I typed `A` to enter insert after the end of the line and typed `new ending`,
    pressing `.` on a new line will again add `new ending` to the end of the line.
- `[#]  [motion]` to repeat a motion any number of times
- `y` and `x` to copy (yank) and cut and `p` to paste
    - `:reg` to view registers
    - `[register location] p` to paste from a specific register. E.g., `"* p` pastes from system clipboard
- `qa` to record a macro into `a`, in this example.
    - `q` to stop recording the macro
    - `@a` to execute the macro at `a`

### Search and replace
- `/[search]`
- `:%s/[search]/[substitute]/[opts]`
    - `:%s/vim/Vim/gc` searches for "vim", replaces it with "Vim", `g` signifies globally
    (i.e., multiple occurrences on the same line), and `c` will cause Vim to prompt you before every change is made.

### Exercises 
- run `vimtutor` in terminal
- from `:help`, various pages (e.g., usr_12.txt). Use `:Explore` to select.
- convert a long csv file from [Kaggle](https://www.kaggle.com) into a Java program
- convert a book from [Project Gutenberg](https://gutenberg.org) into a Java program
- [game: vim adventures](https://vim-adventures.com)
- [video lecture: Vim](https://missing.csail.mit.edu/2020/editors/)



## Regex
Regular expressions (regex, rhymes with "FedEx") are a powerful text matching tool that are used all around your machine:
inside Vim, on the command line, and available as a library in all modern programming languages.
Regex is probably best learned from exercises (see below) and debugging with something like [regex101](https://regex101.com).

- `[]` for matching any of a set of characters
- `()` for matching a specific sequence of characters AND for capturing groups of characters
- escape chars
    - `\b` marks word breaks
    - `\w` marks a word
    - `\d` marks any digit
    - `\s` marks any space
    - `^` marks the beginning of the line and `$` marks the end of the line

### Exercises
- [RegexOne](https://regexone.com)
- Explore a book from [Project Gutenberg](https://gutenberg.org), e.g. Shakespeare's collected works
    - search for words that contain no vowels (e.g., thy, by, etc.)
    - search for a specific word, e.g. "cat"
        - how do you ensure you catch all of these: *cat cat. cat? cat\n*
        - how do you ensure you DON'T catch these:  *catch can't descat*



## bash fundamentals
- `find`
    - `find . -name src -type d` Find all directories named src
    - `find . -path '*/test/*.py' -type f` Find all python files that have a folder named test in their path
    - `find . -mtime -1` Find all files modified in the last day
    - 
- `cat`, `grep`, `sed`
- `echo`
- redirecting and connecting with `<`, `<<`, `>`, `>>`, `|`

### more bash
- todo script
    - everything is a string
    - if else
    - check for file existence
    - `chmod`
    - /usr/local/bin
    - symlinks
