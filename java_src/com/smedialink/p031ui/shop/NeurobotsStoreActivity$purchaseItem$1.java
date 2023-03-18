package com.smedialink.p031ui.shop;

import com.smedialink.bots.usecase.AiBotsManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.solovyev.android.checkout.Purchase;
import org.telegram.messenger.ApplicationLoader;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: NeurobotsStoreActivity.kt */
/* renamed from: com.smedialink.ui.shop.NeurobotsStoreActivity$purchaseItem$1 */
/* loaded from: classes3.dex */
public final class NeurobotsStoreActivity$purchaseItem$1 extends Lambda implements Function1<Purchase, Unit> {
    final /* synthetic */ NeurobotsStoreActivity this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NeurobotsStoreActivity$purchaseItem$1(NeurobotsStoreActivity neurobotsStoreActivity) {
        super(1);
        this.this$0 = neurobotsStoreActivity;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Purchase purchase) {
        invoke2(purchase);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(Purchase purchase) {
        long j;
        AiBotsManager aiBotsManager = ApplicationLoader.smartBotsManager;
        String str = purchase.sku;
        Intrinsics.checkNotNullExpressionValue(str, "purchase.sku");
        j = this.this$0.userId;
        aiBotsManager.downloadPurchase(str, j);
    }
}
