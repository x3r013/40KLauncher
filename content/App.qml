// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0

import QtQuick 6.2
import UntitledProject1

Window {
    width: mainScreen.width
    height: mainScreen.height

    visible: true
    title: "Launcher"

    Screen01{
        id: mainScreen
    }

    StateGroup {
        id: stateGroup
        states: [
            State {
                name: "Updating"
            }
        ]
    }
}

