function wiki --wraps='cd ~/vimwiki/; and vim index.wiki' --description 'alias wiki=cd ~/vimwiki/; and vim index.wiki'
  cd ~/vimwiki/; and nvim index.wiki $argv; 
end
