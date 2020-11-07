######################################################################
#<
#
# Function: p6df::modules::projen::deps()
#
#>
######################################################################
p6df::modules::projen::deps() {
    ModuleDeps=(
      p6m7g8/p6df-node
      # projen/projen # (segfault???)
      # pgollucci/projen
    )
}

######################################################################
#<
#
# Function: p6df::modules::projen::langs()
#
#>
######################################################################
p6df::modules::projen::langs() {

  npm install -g projen

  (cd $P6_DFZ_SRC_DIR/pgollucci/projen ; npm run projen)
}

######################################################################
#<
#
# Function: p6df::modules::projen::init()
#
#>
######################################################################
p6df::modules::projen::init() {

  alias pj='npx projen'
  alias pjn='projen new'
  alias pjv='projen --version'
  alias pjxv='pj --version'

  alias pjp="$P6_DFZ_SRC_DIR/pgollucci/projen/bin/projen"
  alias pje="$P6_DFZ_SRC_DIR/projen/projen/bin/projen"
}
