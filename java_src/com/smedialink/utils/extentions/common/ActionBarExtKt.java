package com.smedialink.utils.extentions.common;

import kotlin.jvm.internal.Intrinsics;
import org.telegram.p048ui.ActionBar.C3351ActionBar;
import org.telegram.p048ui.ActionBar.Theme;
/* compiled from: ActionBarExt.kt */
/* loaded from: classes3.dex */
public final class ActionBarExtKt {
    public static final void applyColorsWithWhiteBackground(C3351ActionBar c3351ActionBar) {
        Intrinsics.checkNotNullParameter(c3351ActionBar, "<this>");
        c3351ActionBar.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
        c3351ActionBar.setItemsColor(Theme.getColor("windowBackgroundWhiteGrayIcon"), false);
        c3351ActionBar.setItemsBackgroundColor(Theme.getColor("actionBarWhiteSelector"), false);
        c3351ActionBar.setTitleColor(Theme.getColor("chat_messagePanelText"));
    }
}
