# synchronize local Maildirs
sync-mail() {
    afew --move --all \
    && mbsync gmail \
    && notmuch new \
    && afew --tag --new
}

# invoke neomutt with syncing
mail() {
    sync-mail && neomutt && sync-mail
}
