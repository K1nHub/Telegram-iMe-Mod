package org.telegram.p043ui;

import android.app.Activity;
import android.view.ViewGroup;
/* renamed from: org.telegram.ui.IUpdateLayout */
/* loaded from: classes5.dex */
public abstract class IUpdateLayout {
    public abstract void moveToDialog(int i, ViewGroup viewGroup);

    public abstract void moveToSideMenu(int i);

    public abstract void updateAppUpdateViews(int i, boolean z);

    public abstract void updateFileProgress(Object[] objArr);

    public IUpdateLayout(Activity activity, ViewGroup viewGroup, ViewGroup viewGroup2) {
    }
}
