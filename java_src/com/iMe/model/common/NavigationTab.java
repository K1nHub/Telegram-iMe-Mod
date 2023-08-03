package com.iMe.model.common;

import com.iMe.p031ui.base.mvp.MvpFragment;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: NavigationTab.kt */
/* loaded from: classes3.dex */
public class NavigationTab<T extends MvpFragment> {
    private final T fragment;

    /* renamed from: id */
    private final int f352id;

    public NavigationTab(int i, T fragment) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        this.f352id = i;
        this.fragment = fragment;
    }

    public int getId() {
        return this.f352id;
    }

    public T getFragment() {
        return this.fragment;
    }
}
