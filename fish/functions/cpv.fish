function cpv --wraps='rsync -avh --info=progress2' --description 'alias cpv=rsync -avh --info=progress2'
  rsync -avh --info=progress2 $argv
        
end
