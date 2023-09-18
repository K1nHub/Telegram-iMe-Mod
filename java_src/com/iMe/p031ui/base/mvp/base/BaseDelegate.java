package com.iMe.p031ui.base.mvp.base;

import android.content.Context;
import moxy.MvpDelegate;
/* compiled from: BaseDelegate.kt */
/* renamed from: com.iMe.ui.base.mvp.base.BaseDelegate */
/* loaded from: classes4.dex */
public interface BaseDelegate<T> {
    MvpDelegate<T> createDelegate();

    Context getContext();
}
