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
      ohmyzsh/ohmyzsh:plugins/projen
      # eladb/projen # (segfault???)
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

  alias pjp="$P6_DFZ_SRC_DIR/pgollucci/projen/bin/projen"
  alias pje="$P6_DFZ_SRC_DIR/eladb/projen/bin/projen"
}
