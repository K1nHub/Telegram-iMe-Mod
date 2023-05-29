package com.iMe.utils.extentions.common;

import kotlin.jvm.internal.Intrinsics;
import org.telegram.p044ui.ActionBar.C3361ActionBar;
import org.telegram.p044ui.ActionBar.Theme;
/* compiled from: ActionBarExt.kt */
/* loaded from: classes4.dex */
public final class ActionBarExtKt {
    public static final void applyColorsWithWhiteBackground(C3361ActionBar c3361ActionBar) {
        Intrinsics.checkNotNullParameter(c3361ActionBar, "<this>");
        c3361ActionBar.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
        c3361ActionBar.setItemsColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayIcon), false);
        c3361ActionBar.setItemsBackgroundColor(Theme.getColor(Theme.key_actionBarWhiteSelector), false);
        c3361ActionBar.setTitleColor(Theme.getColor(Theme.key_chat_messagePanelText));
    }
}
