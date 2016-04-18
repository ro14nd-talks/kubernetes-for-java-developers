alias k="kubectl"
alias kc="kubectl"

kcd() {
   kubectl describe $*
}

kcg() {
  kubectl get $*
}

yml() {
  eval "$* -o yaml | vi -R -c 'setl filetype=yaml' -"
}

alias yaml="yml"

kcgy() {
  yml kubectl get $*
}
