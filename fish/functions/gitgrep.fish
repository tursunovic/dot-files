function gitgrep --wraps=git\ log\ --all\ -i\ grep=\'\' --wraps=git\ log\ --all\ -i\ --grep=\'\' --description alias\ gitgrep=git\ log\ --all\ -i\ --grep=\'\'
  git log --all -i --grep='' $argv; 
end
