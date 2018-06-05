#!/usr/bin/zsh

# synchronize local Maildirs
sync-mail() {
    cd ~/system/mail/gmail && gmi sync
    cd && notmuch new
}

# invoke neomutt with syncing
mail() {
    sync-mail && neomutt && sync-mail
}
