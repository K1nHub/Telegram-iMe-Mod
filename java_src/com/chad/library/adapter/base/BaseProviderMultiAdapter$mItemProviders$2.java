package com.chad.library.adapter.base;

import android.util.SparseArray;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BaseProviderMultiAdapter.kt */
/* loaded from: classes.dex */
public final class BaseProviderMultiAdapter$mItemProviders$2 extends Lambda implements Function0<SparseArray<BaseItemProvider<T>>> {
    public static final BaseProviderMultiAdapter$mItemProviders$2 INSTANCE = new BaseProviderMultiAdapter$mItemProviders$2();

    BaseProviderMultiAdapter$mItemProviders$2() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final SparseArray<BaseItemProvider<T>> invoke() {
        return new SparseArray<>();
    }
}
