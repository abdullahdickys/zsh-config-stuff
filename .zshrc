# fortune -s computers | cowsay -f dragon | lolcat
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/nwe/.oh-my-zsh"

# composer laravel new
export PATH="$HOME/.config/composer/vendor/bin:$PATH"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

# ZSH_THEME="agnoster"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "bullet-train" "powerlevel10k/powerlevel10k" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
alias LS="ls | lolcat"
alias LL="ls -l | lolcat"
alias cddk="cd ~/Desktop"
alias cddw="cd ~/Downloads"
alias cddc="cd ~/Documents"
alias cdms="cd ~/Music"
alias cdvd="cd ~/Videos"

alias gt="git clone"
alias v="vim"
alias cls="clear"
alias h="htop"
alias t="top"
vizshrc () { vi ~/.zshrc }

alias apt-f="sudo apt-fast -f install -y| lolcat"
alias update="sudo apt-fast update -y| lolcat"
alias upgrade="sudo apt-fast upgrade -y| lolcat"
alias autoremove="sudo apt autoremove -y| lolcat"

alias s.="sudo subl ."
alias c.="sudo code . --user-data-dir"
alias mrs="sudo php artisan migrate:refresh --seed | lolcat"
alias migrate="sudo php artisan migrate | lolcat"
alias pa="sudo php artisan"
alias serv="sudo php artisan serv | lolcat"
alias key="sudo php artisan key:generate"
alias makeauth="sudo php artisan ui vue --auth && sudo npm install && sudo npm run dev"
alias vimrc="sudo vi ~/.vimrc"

alias -g G='| grep '
alias -g L='| lolcat '

# figlet "{ {  C  L I     Z S H  } }"
export PATH=$PATH:$HOME/bin
export EDITOR='subl -w'
if [ "$TERM_PROGRAM" = "Terminus-Sublime" ]; then
    bindkey "\e[1;3C" forward-word
    bindkey "\e[1;3D" backward-word
fi
alias cx="cd ~/Desktop/javascript-app/"
alias cxx="cd /home/nwe/Desktop/laravel-app/"
alias x="sudo zsh"
alias learnvel="cd /media/nwe/SYSTEM/Users/Tiger/Videos/Learn\ Laravel/"
alias lumserv="sudo php -S localhost:8000 -t public"
alias code.="sudo code . --user-data-dir"

install() { sudo apt-fast install -y $1 | lolcat }

remove () { sudo apt remove -y $1 $2 $3 $4 $5 $6 $7 $8 $9 | lolcat }

# git alias
first_git () {
	git init && 
	git add * -f &&	
	git commit -m "first commit" &&
	git branch -M master &&
	git remote add origin $1 &&
	git pull origin master &&
	git push -f origin master 
}

push_git () {
	git add * -f &&		
	git commit -m "latest" &&
	git pull origin master L &&
        git push -f origin master L
}

force_git () {
	git add * -f L &&
	git commit -m "latest" L &&
	git push -f origin master --allow-unrelated-histories L &&
	git push origin master --force L
}

nv () { sudo nvim $1 }

lsg () { ls |grep -i $1 $2 $3 $4 $5 $6 $7 $8 $9| lolcat }

findf () { sudo find . |grep -i $1 | lolcat}

rmvf () { sudo rm -Rvf $1 $2 $3| lolcat }

p8 () { while; do ping 8.8.8.8 | lolcat; sleep 2; done }

p9 () { ping -s 9000 127.0.0.1 | lolcat}

# laravel alias
lara5.8 () {
	sudo composer create-project --prefer-dist laravel/laravel $1  "5.8.*" ;
	sudo mysql -u root -p -e "create database $1;" && 
	sudo chown -R $USER:$USER $1 &&
	cd $1 && 
	sudo sed -i 's/DB_PASSWORD=/DB_PASSWORD=my_password/g' .env &&
	sudo sed -i 's/DB_DATABASE=laravel/DB_DATABASE='$1'/g' .env
}

laranew () {
	laravel new $1 &&
	sudo mysql -u root -p -e "create database $1;" && 
	sudo chown -R $USER:$USER $1 &&
	cd $1 && 
	sudo sed -i 's/DB_PASSWORD=/DB_PASSWORD=my_password/g' .env &&
	sudo sed -i 's/DB_DATABASE=laravel/DB_DATABASE='$1'/g' .env
}

lara7_spa () {
        laravel new $1 --auth &&
        sudo mysql -u root -p -e "create database $1;" &&
        sudo chown -R $USER:$USER $1 &&
        cd $1 &&
        sudo sed -i 's/DB_PASSWORD=/DB_PASSWORD=my_password/g' .env &&
        sudo sed -i 's/DB_DATABASE=laravel/DB_DATABASE='$1'/g' .env &&
	sudo npm install && sudo npm run dev && npm install vue bootstrap-vue bootstrap &&
 	sudo npm install vue-template-compiler --save-dev --production=false
}


larablue () {
	laravel new $1 --auth &&
	sudo mysql -u root -p -e "create database $1;" && 
	sudo chown -R $USER:$USER $1 &&
	cd $1 && 
	sudo sed -i 's/DB_PASSWORD=/DB_PASSWORD=my_password/g' .env &&
	sudo sed -i 's/DB_DATABASE=laravel/DB_DATABASE='$1'/g' .env &&
	sudo composer require --dev laravel-shift/blueprint &&
	sudo composer require jasonmccreary/laravel-test-assertions &&
	touch draft.yaml &&
	echo '/draft.yaml' >> .gitignore &&
	echo '/.blueprint' >> .gitignore
}

velas_8 () {
	laravel new $1 --jet &&
	sudo mysql -u root -p -e "create database $1;" && 
	sudo chown -R $USER:$USER $1 &&
	cd $1 && 
	sudo sed -i 's/DB_PASSWORD=/DB_PASSWORD=my_password/g' .env &&
	sudo sed -i 's/DB_DATABASE=laravel/DB_DATABASE='$1'/g' .env &&
	sudo php artisan migrate
}

velas_adminlte () {
	sudo composer create-project --prefer-dist laravel/laravel $1  "7.*.*" &&
        sudo mysql -u root -p -e "create database $1;" &&
        sudo chown -R $USER:$USER $1 &&
        cd $1 &&
	composer require infyomlabs/laravel-ui-adminlte:^2.0 &&
	php artisan ui adminlte --auth &&
        npm install && npm run dev &&
	npm install vue-template-compiler --save-dev --production=false &&
	sed -i 's/DB_PASSWORD=/DB_PASSWORD=my_password/g' .env ;
        sed -i 's/DB_DATABASE=laravel/DB_DATABASE='$1'/g' .env ;
        composer require --dev laravel-shift/blueprint &&
	composer require jasonmccreary/laravel-test-assertions ;
        touch draft.yaml
}

velas_coreui () {
        sudo composer create-project --prefer-dist laravel/laravel $1  "7.*.*" &&
        sudo mysql -u root -p -e "create database $1;" &&
        sudo chown -R $USER:$USER $1 &&
        cd $1 &&
	composer require infyomlabs/laravel-ui-coreui:^2.0 &&
	php artisan ui coreui --auth &&
        npm install && npm run dev &&
	npm install vue-template-compiler --save-dev --production=false &&
        sed -i 's/DB_PASSWORD=/DB_PASSWORD=my_password/g' .env ;
        sed -i 's/DB_DATABASE=laravel/DB_DATABASE='$1'/g' .env ;
        composer require --dev laravel-shift/blueprint &&
	composer require jasonmccreary/laravel-test-assertions ;
        touch draft.yaml
}

# vue alias
v-create () { 
	vue create $1 
}

alias v-serv="npm run serve L"
alias v-build="npm run build L"
alias npmdate="sudo npm install -g npm@latest L"

mpvv () {
	while;
	do mpv $1 $2 $3 $4 $5 $6 $7 $8 $9  --no-video --volume=45;
	done
}



killp () { sudo kill $1 $2 $3 $4 $5 $6 $7 $8 $9 }


cdmusic () {
	cd /media/nwe/2fe7399c-83da-4287-9046-1edd018b7640/home/hyaah/Music/
}

laraProject () {
	cd /media/nwe/2fe7399c-83da-4287-9046-1edd018b7640/home/hyaah/Desktop/laravel-app-collection/
}

mkfile() { mkdir -p -- "$1" && touch -- "$1"/"$2" }

dgrep(){
    docker ps -a | grep "$1" | cut -c1-12
}

# bash into an existing container
dbash() {
    docker exec -ti $(dgrep "$1") /bin/bash
}

# sh into an existing container
dsh() {
    docker exec -ti $(dgrep "$1") /bin/sh
}

# Execute something in an existing container
dex() {
    docker exec -ti $(dgrep "$1") $2
}

# Start an existing container
dstart(){
    docker start $(dgrep "$1")
}

# Stop an existing container
dstop(){
    docker stop $(dgrep "$1")
}

# Remove an existing container
drm(){
    docker rm $(dgrep "$1")
}

# Stop and remove an existing container
dsrm(){
    dstop $(dgrep "$1") && drm $(dgrep "$1")
}

# Remove an existing image
dirm(){
    docker image remove $(dgrep "$1")
}

# Get logs of an existing container
dlog(){
    docker logs $(dgrep "$1")
}

if [[ -r /usr/local/lib/python3.8/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
source /usr/local/lib/python3.8/site-packages/powerline/bindings/zsh/powerline.zsh
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# export DEFAULT_USER="$(whoami)"
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
typeset -g POWERLEVEL9K_INSTANT_PROMPT=off
# source $(dirname $(gem which colorls))/tab_complete.sh
alias lc='colorls -lA --sd'

