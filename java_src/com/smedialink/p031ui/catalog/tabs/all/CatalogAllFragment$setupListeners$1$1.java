package com.smedialink.p031ui.catalog.tabs.all;

import com.smedialink.model.catalog.CampaignItem;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CatalogAllFragment.kt */
/* renamed from: com.smedialink.ui.catalog.tabs.all.CatalogAllFragment$setupListeners$1$1 */
/* loaded from: classes3.dex */
public final class CatalogAllFragment$setupListeners$1$1 extends Lambda implements Function1<CampaignItem, Unit> {
    final /* synthetic */ CatalogAllFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CatalogAllFragment$setupListeners$1$1(CatalogAllFragment catalogAllFragment) {
        super(1);
        this.this$0 = catalogAllFragment;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(CampaignItem campaignItem) {
        invoke2(campaignItem);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(CampaignItem it) {
        CatalogAllPresenter presenter;
        Intrinsics.checkNotNullParameter(it, "it");
        presenter = this.this$0.getPresenter();
        presenter.onChannelClick(it);
    }
}
