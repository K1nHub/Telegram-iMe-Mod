package com.iMe.p031ui.catalog.tabs.all;

import com.iMe.model.catalog.CampaignItem;
import com.iMe.storage.domain.model.catalog.ChatType;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.tgnet.TLRPC$Chat;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.catalog.tabs.all.CatalogAllPresenter$onChannelClick$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes.dex */
public final class C2006x8163b70b extends Lambda implements Function1<TLRPC$Chat, Unit> {
    final /* synthetic */ CampaignItem $campaign$inlined;
    final /* synthetic */ CatalogAllPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2006x8163b70b(CatalogAllPresenter catalogAllPresenter, CampaignItem campaignItem) {
        super(1);
        this.this$0 = catalogAllPresenter;
        this.$campaign$inlined = campaignItem;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(TLRPC$Chat tLRPC$Chat) {
        m1327invoke(tLRPC$Chat);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1327invoke(TLRPC$Chat it) {
        ChatType chatType;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        CatalogAllView catalogAllView = (CatalogAllView) this.this$0.getViewState();
        CampaignItem campaignItem = this.$campaign$inlined;
        chatType = this.this$0.chatType;
        catalogAllView.openCampaignDetailsScreen(campaignItem, it, chatType);
    }
}
