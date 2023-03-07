package org.fork.utils;

import android.view.View;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AbstractTabbedViewPage.kt */
/* loaded from: classes4.dex */
public abstract class AbstractTabbedViewPage {
    private final int icon;
    private final String title;

    public abstract View getView();

    public AbstractTabbedViewPage(String title, int i) {
        Intrinsics.checkNotNullParameter(title, "title");
        this.title = title;
        this.icon = i;
    }

    public String getTitle() {
        return this.title;
    }

    public int getIcon() {
        return this.icon;
    }
}
