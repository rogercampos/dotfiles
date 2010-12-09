alias be='bundle exec'

# from mislav dotfiles: https://github.com/mislav/dotfiles

function cdgem {
  cd `gem env gemdir`/gems
  cd `ls | grep $1 | sort | tail -1`
}

function gemdoc {
  GEMDIR=`gem env gemdir`/doc
  gnome-open $GEMDIR/`ls $GEMDIR | grep $1 | sort | tail -1`/rdoc/index.html
}

function vimgem {
  GEMDIR=`gem env gemdir`/gems
  vim $GEMDIR/`ls $GEMDIR | grep $1 | sort | tail -1`
}
