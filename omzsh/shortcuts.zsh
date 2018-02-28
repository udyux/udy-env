#!zsh ~/.oh-my-zsh/custom

# open directory in finder
function o() {
	open $PWD/$1
}

# get gzipped weight (bytes)
function gzipped() {
	gzip -c $1 | wc -c
}

# copy path to npm dev package tar
function npm-tar() {
  tar="$(npm pack)"
	echo $tar
	echo -n "npm i --no-save ${PWD}/${tar}" | pbcopy
}
