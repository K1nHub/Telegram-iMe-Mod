package com.chad.library.adapter.base;

import com.chad.library.adapter.base.module.BaseLoadMoreModule;
import kotlin.jvm.internal.Intrinsics;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BaseQuickAdapter.kt */
/* loaded from: classes.dex */
public interface BaseQuickAdapterModuleImp {
    BaseLoadMoreModule addLoadMoreModule(BaseQuickAdapter<?, ?> baseQuickAdapter);

    /* compiled from: BaseQuickAdapter.kt */
    /* renamed from: com.chad.library.adapter.base.BaseQuickAdapterModuleImp$-CC  reason: invalid class name */
    /* loaded from: classes.dex */
    public final /* synthetic */ class CC {
        public static BaseLoadMoreModule $default$addLoadMoreModule(BaseQuickAdapterModuleImp _this, BaseQuickAdapter baseQuickAdapter) {
            Intrinsics.checkNotNullParameter(baseQuickAdapter, "baseQuickAdapter");
            return new BaseLoadMoreModule(baseQuickAdapter);
        }
    }
}
