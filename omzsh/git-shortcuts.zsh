#!zsh ~/.oh-my-zsh/custom

# git add all and commit
function commit() {
	git add -A && git commit -m $1
}

# git add all, commit and push
function push() {
	commit $1 && git push
}

# merge branch $1 into branch $2
function merge() {
	git checkout $2 && git merge $1
}

# merge branch $1 into master and push master
function deploy() {
	merge $1 master && git push
	git checkout $1
}
