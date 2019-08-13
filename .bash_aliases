export PS1="\[\e]0;\u@\h: \w\a\]\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "
export PS1="\[\e]0;\u@\h: \w\a\]@🍞\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "

export PATH="$PATH:$HOME/bin"
export CLASSPATH='.:/home/tik/java/apache-tomcat-9.0.14/lib/*'
# alias eclipse="xiwi eclipse > /dev/null 2>&1 &"
alias chrome='xiwi bash -c "fcitx-autostart && google-chrome"'
alias code='xiwi bash -c "fcitx-autostart & code" >/dev/null 2>&1 &'
alias webarena='ssh -i ~/ssh-ux1djqd7.pem tik@140.227.69.80'

# for npm
export PATH="$PATH:$HOME/.npm-global/bin"
# for nodenv 190501
# export PATH="$HOME/.nodenv/bin:$PATH"
export PATH="$HOME/.nodenv/shims:$HOME/.nodenv/bin:$PATH"
