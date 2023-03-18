package com.chad.library.adapter.base;

import com.chad.library.adapter.base.module.BaseLoadMoreModule;
import kotlin.jvm.internal.Intrinsics;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BaseQuickAdapter.kt */
/* loaded from: classes.dex */
public interface BaseQuickAdapterModuleImp {

    /* compiled from: BaseQuickAdapter.kt */
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        public static BaseLoadMoreModule addLoadMoreModule(BaseQuickAdapterModuleImp baseQuickAdapterModuleImp, BaseQuickAdapter<?, ?> baseQuickAdapter) {
            Intrinsics.checkNotNullParameter(baseQuickAdapter, "baseQuickAdapter");
            return new BaseLoadMoreModule(baseQuickAdapter);
        }
    }
}
