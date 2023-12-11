package com.iMe.utils.extentions.common;

import kotlin.jvm.internal.Intrinsics;
import org.telegram.p043ui.ActionBar.C3704ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: ActionBarExt.kt */
/* loaded from: classes4.dex */
public final class ActionBarExtKt {
    public static final void applyColorsWithWhiteBackground(C3704ActionBar c3704ActionBar) {
        Intrinsics.checkNotNullParameter(c3704ActionBar, "<this>");
        c3704ActionBar.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
        c3704ActionBar.setItemsColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayIcon), false);
        c3704ActionBar.setItemsBackgroundColor(Theme.getColor(Theme.key_actionBarWhiteSelector), false);
        c3704ActionBar.setTitleColor(Theme.getColor(Theme.key_chat_messagePanelText));
    }
}
