package com.smedialink.p031ui.shop.view;

import com.smedialink.bots.domain.model.ShopItem;
import com.smedialink.p031ui.shop.view.adapter.BotsAdapter;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ListBotsPageView.kt */
/* renamed from: com.smedialink.ui.shop.view.ListBotsPageView$subscribeToContent$3 */
/* loaded from: classes3.dex */
public final class ListBotsPageView$subscribeToContent$3 extends Lambda implements Function1<List<? extends ShopItem>, Unit> {
    final /* synthetic */ ListBotsPageView this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ListBotsPageView$subscribeToContent$3(ListBotsPageView listBotsPageView) {
        super(1);
        this.this$0 = listBotsPageView;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(List<? extends ShopItem> list) {
        invoke2((List<ShopItem>) list);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(List<ShopItem> items) {
        BotsAdapter botsAdapter;
        Intrinsics.checkNotNullParameter(items, "items");
        botsAdapter = this.this$0.recyclerAdapter;
        botsAdapter.setContent(items);
    }
}
