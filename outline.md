[toc]
## Week 2
### vim 
- vim's philosophy
- learning vim motions vs learning vim
- `:help [cmd]` to get the documentation for anything
    - `:help :q` gets info on the quit command, :q
    - `:help q` gets info on the q motion/command for macros
- visual-normal-insert modes
- `:Explore`
- getting around
    - `hjkl`
    - `<C-d>` and `<C-u>`
    - `gg` and `G` and `[#]gg`
    - `ma` and `'a` or `[backtick]a`
    - `0` and `$`
- jump into insert
    - `i` and `I`
    - `a` and `A`
    - `dw`
    - `ce`
    - `viwc`
- \# + motion
- block and line visual
- `y`/`x`, `p`, and `:reg`
- macros
- `/[search]`
- `:%s/[search]/[substitute]/[opts]`
- exercises 
    - run `vimtutor` in terminal
    - from `:help`, various pages (e.g., usr_12.txt). Use `:Explore` to select.
    - convert a long csv file from [Kaggle](https://www.kaggle.com) into a Java program
    - convert a book from [Project Gutenberg](https://gutenberg.org) into a Java program
    - [game: vim adventures](https://vim-adventures.com)
    - [video lecture: vim](https://missing.csail.mit.edu/2020/editors/)

### regex
- `[]` for matching any of a set of characters
- `()` for matching a specific sequence of characters AND capturing groups of characters
- esc chars
    - \b
    - \w
    - \d
    - \s
    - `^`, `$`
- exercises
    - [RegexOne](https://regexone.com)
    - Explore a book from [Project Gutenberg](https://gutenberg.org), e.g. Shakespeare's collected works
        - search for words that contain no vowels (e.g., thy, by, etc.)
        - search for a specific word, e.g. "cat"
            - how do you ensure you catch all of these: *cat cat. cat? cat\n*
            - how do you ensure you DON'T catch these:  *catch can't descat*



## Week 3
### bash fundamentals
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
