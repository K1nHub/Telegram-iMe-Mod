package com.smedialink.model.common;

import com.smedialink.p031ui.base.mvp.MvpFragment;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: NavigationTab.kt */
/* loaded from: classes3.dex */
public class NavigationTab<T extends MvpFragment> {
    private final T fragment;

    /* renamed from: id */
    private final int f265id;

    public NavigationTab(int i, T fragment) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        this.f265id = i;
        this.fragment = fragment;
    }

    public int getId() {
        return this.f265id;
    }

    public T getFragment() {
        return this.fragment;
    }
}
