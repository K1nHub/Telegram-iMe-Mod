package com.iMe.p031ui.adapter.provider;

import com.iMe.model.catalog.CampaignItem;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: CategoryWithCampaignsProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.CategoryWithCampaignsProvider$onChannelItemClick$1 */
/* loaded from: classes.dex */
final class CategoryWithCampaignsProvider$onChannelItemClick$1 extends Lambda implements Function1<CampaignItem, Unit> {
    public static final CategoryWithCampaignsProvider$onChannelItemClick$1 INSTANCE = new CategoryWithCampaignsProvider$onChannelItemClick$1();

    CategoryWithCampaignsProvider$onChannelItemClick$1() {
        super(1);
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(CampaignItem it) {
        Intrinsics.checkNotNullParameter(it, "it");
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(CampaignItem campaignItem) {
        invoke2(campaignItem);
        return Unit.INSTANCE;
    }
}
