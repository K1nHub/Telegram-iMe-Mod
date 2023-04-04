package com.iMe.model.common;

import com.iMe.p032ui.base.mvp.MvpFragment;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: NavigationTab.kt */
/* loaded from: classes3.dex */
public class NavigationTab<T extends MvpFragment> {
    private final T fragment;

    /* renamed from: id */
    private final int f268id;

    public NavigationTab(int i, T fragment) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        this.f268id = i;
        this.fragment = fragment;
    }

    public int getId() {
        return this.f268id;
    }

    public T getFragment() {
        return this.fragment;
    }
}
