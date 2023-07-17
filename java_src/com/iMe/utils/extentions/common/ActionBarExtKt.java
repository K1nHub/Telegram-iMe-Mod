package com.iMe.utils.extentions.common;

import kotlin.jvm.internal.Intrinsics;
import org.telegram.p043ui.ActionBar.C3484ActionBar;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: ActionBarExt.kt */
/* loaded from: classes4.dex */
public final class ActionBarExtKt {
    public static final void applyColorsWithWhiteBackground(C3484ActionBar c3484ActionBar) {
        Intrinsics.checkNotNullParameter(c3484ActionBar, "<this>");
        c3484ActionBar.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
        c3484ActionBar.setItemsColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayIcon), false);
        c3484ActionBar.setItemsBackgroundColor(Theme.getColor(Theme.key_actionBarWhiteSelector), false);
        c3484ActionBar.setTitleColor(Theme.getColor(Theme.key_chat_messagePanelText));
    }
}
