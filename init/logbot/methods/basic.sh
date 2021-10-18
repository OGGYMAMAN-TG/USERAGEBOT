#!/bin/bash
#
# Copyright (C) 2020-2021 by UsergeTeam@Github, < https://github.com/irash1234567/USERAGEBOT >.
#
# This file is part of < https://github.com/irash1234567/USERAGEBOT > project,
# and is released under the "GNU v3.0 License Agreement".
# Please see < https://github.com/irash1234567/USERAGEBOT/blob/master/LICENSE >
#
# All rights reserved.

sendMessage() {
    test -z "$1" || api.sendMessage $LOG_CHANNEL_ID "$1"
}

replyLastMessage() {
    test -z "$1" || raw.getLastMessage reply "$1"
}

editLastMessage() {
    test -z "$1" || raw.getLastMessage edit "$1"
}

deleteLastMessage() {
    raw.getLastMessage delete
}

deleteMessages() {
    raw.getMessageCount
    local count=$(($?))
    for ((i=0; i<$count; i++)); do
        deleteLastMessage
    done
}

printMessages() {
    for msg in $(raw.getAllMessages); do
        printf "{%s: %s}\n" $msg "$($msg.print)"
    done
}
