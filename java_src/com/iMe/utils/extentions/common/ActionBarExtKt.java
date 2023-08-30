package com.iMe.utils.extentions.common;

import kotlin.jvm.internal.Intrinsics;
import org.telegram.p043ui.ActionBar.C3626ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: ActionBarExt.kt */
/* loaded from: classes4.dex */
public final class ActionBarExtKt {
    public static final void applyColorsWithWhiteBackground(C3626ActionBar c3626ActionBar) {
        Intrinsics.checkNotNullParameter(c3626ActionBar, "<this>");
        c3626ActionBar.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
        c3626ActionBar.setItemsColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayIcon), false);
        c3626ActionBar.setItemsBackgroundColor(Theme.getColor(Theme.key_actionBarWhiteSelector), false);
        c3626ActionBar.setTitleColor(Theme.getColor(Theme.key_chat_messagePanelText));
    }
}
