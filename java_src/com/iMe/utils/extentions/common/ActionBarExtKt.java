package com.iMe.utils.extentions.common;

import kotlin.jvm.internal.Intrinsics;
import org.telegram.p043ui.ActionBar.C3541ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: ActionBarExt.kt */
/* loaded from: classes6.dex */
public final class ActionBarExtKt {
    public static final void applyColorsWithWhiteBackground(C3541ActionBar c3541ActionBar) {
        Intrinsics.checkNotNullParameter(c3541ActionBar, "<this>");
        c3541ActionBar.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
        c3541ActionBar.setItemsColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayIcon), false);
        c3541ActionBar.setItemsBackgroundColor(Theme.getColor(Theme.key_actionBarWhiteSelector), false);
        c3541ActionBar.setTitleColor(Theme.getColor(Theme.key_chat_messagePanelText));
    }
}
