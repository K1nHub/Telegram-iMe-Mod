package com.iMe.utils.extentions.common;

import kotlin.jvm.internal.Intrinsics;
import org.telegram.p043ui.ActionBar.C3485ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: ActionBarExt.kt */
/* loaded from: classes4.dex */
public final class ActionBarExtKt {
    public static final void applyColorsWithWhiteBackground(C3485ActionBar c3485ActionBar) {
        Intrinsics.checkNotNullParameter(c3485ActionBar, "<this>");
        c3485ActionBar.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
        c3485ActionBar.setItemsColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayIcon), false);
        c3485ActionBar.setItemsBackgroundColor(Theme.getColor(Theme.key_actionBarWhiteSelector), false);
        c3485ActionBar.setTitleColor(Theme.getColor(Theme.key_chat_messagePanelText));
    }
}
