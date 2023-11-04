package com.iMe.utils.extentions.common;

import kotlin.jvm.internal.Intrinsics;
import org.telegram.p043ui.ActionBar.C3706ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: ActionBarExt.kt */
/* loaded from: classes4.dex */
public final class ActionBarExtKt {
    public static final void applyColorsWithWhiteBackground(C3706ActionBar c3706ActionBar) {
        Intrinsics.checkNotNullParameter(c3706ActionBar, "<this>");
        c3706ActionBar.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
        c3706ActionBar.setItemsColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayIcon), false);
        c3706ActionBar.setItemsBackgroundColor(Theme.getColor(Theme.key_actionBarWhiteSelector), false);
        c3706ActionBar.setTitleColor(Theme.getColor(Theme.key_chat_messagePanelText));
    }
}
