package com.smedialink.utils.extentions.common;

import kotlin.jvm.internal.Intrinsics;
import org.telegram.p048ui.ActionBar.C3222ActionBar;
import org.telegram.p048ui.ActionBar.Theme;
/* compiled from: ActionBarExt.kt */
/* loaded from: classes3.dex */
public final class ActionBarExtKt {
    public static final void applyColorsWithWhiteBackground(C3222ActionBar c3222ActionBar) {
        Intrinsics.checkNotNullParameter(c3222ActionBar, "<this>");
        c3222ActionBar.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
        c3222ActionBar.setItemsColor(Theme.getColor("windowBackgroundWhiteGrayIcon"), false);
        c3222ActionBar.setItemsBackgroundColor(Theme.getColor("actionBarWhiteSelector"), false);
        c3222ActionBar.setTitleColor(Theme.getColor("chat_messagePanelText"));
    }
}
