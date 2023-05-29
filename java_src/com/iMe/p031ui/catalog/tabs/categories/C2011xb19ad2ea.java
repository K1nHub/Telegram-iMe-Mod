package com.iMe.p031ui.catalog.tabs.categories;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.catalog.CampaignsCursored;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.catalog.tabs.categories.CatalogCategoriesPresenter$loadChannels$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes.dex */
public final class C2011xb19ad2ea extends Lambda implements Function1<Result<? extends CampaignsCursored>, Unit> {
    final /* synthetic */ boolean $isLoadMore$inlined;
    final /* synthetic */ CatalogCategoriesPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2011xb19ad2ea(CatalogCategoriesPresenter catalogCategoriesPresenter, boolean z) {
        super(1);
        this.this$0 = catalogCategoriesPresenter;
        this.$isLoadMore$inlined = z;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends CampaignsCursored> result) {
        m1328invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1328invoke(Result<? extends CampaignsCursored> it) {
        Intrinsics.checkNotNullExpressionValue(it, "it");
        this.this$0.processChannelsResult(it, this.$isLoadMore$inlined);
    }
}
