package com.iMe.p031ui.shop;

import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PurchaseHelper.kt */
/* renamed from: com.iMe.ui.shop.PurchaseHelper$preloadPurchasesInfo$1 */
/* loaded from: classes3.dex */
public final class PurchaseHelper$preloadPurchasesInfo$1 extends Lambda implements Function1<List<? extends String>, Unit> {
    final /* synthetic */ PurchaseHelper this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PurchaseHelper$preloadPurchasesInfo$1(PurchaseHelper purchaseHelper) {
        super(1);
        this.this$0 = purchaseHelper;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(List<? extends String> list) {
        invoke2((List<String>) list);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(List<String> list) {
        if (list != null) {
            PurchaseHelper.loadSkuDetails$default(this.this$0, list, null, 2, null);
        }
    }
}
