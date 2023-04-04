package com.iMe.p032ui.shop;

import com.iMe.bots.domain.model.ShopItem;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BotInfoActivity.kt */
/* renamed from: com.iMe.ui.shop.BotInfoActivity$subscribeToBotContent$1 */
/* loaded from: classes3.dex */
public final class BotInfoActivity$subscribeToBotContent$1 extends Lambda implements Function1<ShopItem, Unit> {
    final /* synthetic */ BotInfoActivity this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BotInfoActivity$subscribeToBotContent$1(BotInfoActivity botInfoActivity) {
        super(1);
        this.this$0 = botInfoActivity;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(ShopItem shopItem) {
        invoke2(shopItem);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(ShopItem item) {
        BotInfoActivity botInfoActivity = this.this$0;
        Intrinsics.checkNotNullExpressionValue(item, "item");
        botInfoActivity.displayBotItem(item);
    }
}
