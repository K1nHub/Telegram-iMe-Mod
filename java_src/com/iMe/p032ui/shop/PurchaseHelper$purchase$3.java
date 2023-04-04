package com.iMe.p032ui.shop;

import io.reactivex.disposables.Disposable;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PurchaseHelper.kt */
/* renamed from: com.iMe.ui.shop.PurchaseHelper$purchase$3 */
/* loaded from: classes3.dex */
public final class PurchaseHelper$purchase$3 extends Lambda implements Function1<Disposable, Unit> {
    final /* synthetic */ PurchaseHelper this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PurchaseHelper$purchase$3(PurchaseHelper purchaseHelper) {
        super(1);
        this.this$0 = purchaseHelper;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Disposable disposable) {
        invoke2(disposable);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(Disposable disposable) {
        this.this$0.isPurchaseFlowActive = true;
    }
}
