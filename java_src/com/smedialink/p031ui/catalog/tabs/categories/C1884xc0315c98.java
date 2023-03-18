package com.smedialink.p031ui.catalog.tabs.categories;

import com.smedialink.model.catalog.CampaignItem;
import com.smedialink.storage.domain.model.catalog.ChatType;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.tgnet.TLRPC$Chat;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.ui.catalog.tabs.categories.CatalogCategoriesPresenter$onChannelClick$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C1884xc0315c98 extends Lambda implements Function1<TLRPC$Chat, Unit> {
    final /* synthetic */ CampaignItem $campaign$inlined;
    final /* synthetic */ CatalogCategoriesPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1884xc0315c98(CatalogCategoriesPresenter catalogCategoriesPresenter, CampaignItem campaignItem) {
        super(1);
        this.this$0 = catalogCategoriesPresenter;
        this.$campaign$inlined = campaignItem;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(TLRPC$Chat tLRPC$Chat) {
        m1212invoke(tLRPC$Chat);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1212invoke(TLRPC$Chat it) {
        ChatType chatType;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        CatalogCategoriesView catalogCategoriesView = (CatalogCategoriesView) this.this$0.getViewState();
        CampaignItem campaignItem = this.$campaign$inlined;
        chatType = this.this$0.chatType;
        catalogCategoriesView.openCampaignDetailsScreen(campaignItem, it, chatType);
    }
}
