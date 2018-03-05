#!/usr/bin/zsh -e
# synchronize local mail

afew --move --all
mbsync gmail
notmuch new
afew --tag --new
