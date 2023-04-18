package com.iMe.utils.extentions.common;

import kotlin.jvm.internal.Intrinsics;
import org.telegram.p044ui.ActionBar.C3306ActionBar;
import org.telegram.p044ui.ActionBar.Theme;
/* compiled from: ActionBarExt.kt */
/* loaded from: classes4.dex */
public final class ActionBarExtKt {
    public static final void applyColorsWithWhiteBackground(C3306ActionBar c3306ActionBar) {
        Intrinsics.checkNotNullParameter(c3306ActionBar, "<this>");
        c3306ActionBar.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
        c3306ActionBar.setItemsColor(Theme.getColor("windowBackgroundWhiteGrayIcon"), false);
        c3306ActionBar.setItemsBackgroundColor(Theme.getColor("actionBarWhiteSelector"), false);
        c3306ActionBar.setTitleColor(Theme.getColor("chat_messagePanelText"));
    }
}
