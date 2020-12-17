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

  pj_install

  (
    cd $P6_DFZ_SRC_DIR/pgollucci/projen
    p6_git_p6_update
    npm run projen
  )
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
}

######################################################################
#<
#
# Function: p6df::modules::projen::pr::rebuild(pr)
#
#  Args:
#	pr -
#
#>
######################################################################
p6df::modules::projen::pr::rebuild() {
  local pr="$1"

  p6_github_gh_pr_comment "$pr" "@projen rebuild"
}