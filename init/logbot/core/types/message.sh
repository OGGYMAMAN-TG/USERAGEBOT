#!/bin/bash
#
# Copyright (C) 2020-2021 by UsergeTeam@Github, < https://github.com/irash1234567/USERAGEBOT >.
#
# This file is part of < https://github.com/irash1234567/USERAGEBOT > project,
# and is released under the "GNU v3.0 License Agreement".
# Please see < https://github.com/irash1234567/USERAGEBOT/blob/master/LICENSE >
#
# All rights reserved.

Message() {
    . <(sed "s/_Message/$1/g" init/logbot/core/types/messageClass.sh)
}
