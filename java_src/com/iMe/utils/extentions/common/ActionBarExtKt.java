package com.iMe.utils.extentions.common;

import kotlin.jvm.internal.Intrinsics;
import org.telegram.p048ui.ActionBar.C3381ActionBar;
import org.telegram.p048ui.ActionBar.Theme;
/* compiled from: ActionBarExt.kt */
/* loaded from: classes4.dex */
public final class ActionBarExtKt {
    public static final void applyColorsWithWhiteBackground(C3381ActionBar c3381ActionBar) {
        Intrinsics.checkNotNullParameter(c3381ActionBar, "<this>");
        c3381ActionBar.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
        c3381ActionBar.setItemsColor(Theme.getColor("windowBackgroundWhiteGrayIcon"), false);
        c3381ActionBar.setItemsBackgroundColor(Theme.getColor("actionBarWhiteSelector"), false);
        c3381ActionBar.setTitleColor(Theme.getColor("chat_messagePanelText"));
    }
}
