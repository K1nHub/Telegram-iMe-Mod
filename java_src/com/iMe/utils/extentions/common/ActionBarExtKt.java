package com.iMe.utils.extentions.common;

import kotlin.jvm.internal.Intrinsics;
import org.telegram.p044ui.ActionBar.C3356ActionBar;
import org.telegram.p044ui.ActionBar.Theme;
/* compiled from: ActionBarExt.kt */
/* loaded from: classes4.dex */
public final class ActionBarExtKt {
    public static final void applyColorsWithWhiteBackground(C3356ActionBar c3356ActionBar) {
        Intrinsics.checkNotNullParameter(c3356ActionBar, "<this>");
        c3356ActionBar.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
        c3356ActionBar.setItemsColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayIcon), false);
        c3356ActionBar.setItemsBackgroundColor(Theme.getColor(Theme.key_actionBarWhiteSelector), false);
        c3356ActionBar.setTitleColor(Theme.getColor(Theme.key_chat_messagePanelText));
    }
}
