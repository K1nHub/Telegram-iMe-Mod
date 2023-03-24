package com.smedialink.utils.extentions.common;

import kotlin.jvm.internal.Intrinsics;
import org.telegram.p048ui.ActionBar.C3366ActionBar;
import org.telegram.p048ui.ActionBar.Theme;
/* compiled from: ActionBarExt.kt */
/* loaded from: classes3.dex */
public final class ActionBarExtKt {
    public static final void applyColorsWithWhiteBackground(C3366ActionBar c3366ActionBar) {
        Intrinsics.checkNotNullParameter(c3366ActionBar, "<this>");
        c3366ActionBar.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
        c3366ActionBar.setItemsColor(Theme.getColor("windowBackgroundWhiteGrayIcon"), false);
        c3366ActionBar.setItemsBackgroundColor(Theme.getColor("actionBarWhiteSelector"), false);
        c3366ActionBar.setTitleColor(Theme.getColor("chat_messagePanelText"));
    }
}
