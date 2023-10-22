package com.iMe.utils.extentions.common;

import kotlin.jvm.internal.Intrinsics;
import org.telegram.p042ui.ActionBar.C3702ActionBar;
import org.telegram.p042ui.ActionBar.Theme;
/* compiled from: ActionBarExt.kt */
/* loaded from: classes4.dex */
public final class ActionBarExtKt {
    public static final void applyColorsWithWhiteBackground(C3702ActionBar c3702ActionBar) {
        Intrinsics.checkNotNullParameter(c3702ActionBar, "<this>");
        c3702ActionBar.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
        c3702ActionBar.setItemsColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayIcon), false);
        c3702ActionBar.setItemsBackgroundColor(Theme.getColor(Theme.key_actionBarWhiteSelector), false);
        c3702ActionBar.setTitleColor(Theme.getColor(Theme.key_chat_messagePanelText));
    }
}
