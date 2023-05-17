package com.iMe.p031ui.catalog.tabs.all;

import com.iMe.mapper.catalog.CatalogCampaignsUiMappingKt;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.catalog.Campaign;
import com.iMe.storage.domain.model.catalog.CampaignsCursored;
import com.iMe.storage.domain.model.catalog.CategoryPreview;
import com.iMe.storage.domain.utils.system.ResourceManager;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.catalog.tabs.all.CatalogAllPresenter$loadMoreChannels$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes.dex */
public final class C2004x585eb812 extends Lambda implements Function1<Result<? extends CampaignsCursored>, Unit> {
    final /* synthetic */ long $categoryId$inlined;
    final /* synthetic */ CatalogAllPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2004x585eb812(CatalogAllPresenter catalogAllPresenter, long j) {
        super(1);
        this.this$0 = catalogAllPresenter;
        this.$categoryId$inlined = j;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends CampaignsCursored> result) {
        m1326invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1326invoke(Result<? extends CampaignsCursored> it) {
        ResourceManager resourceManager;
        List list;
        Object obj;
        Map map;
        boolean z;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends CampaignsCursored> result = it;
        if (result instanceof Result.Success) {
            list = this.this$0.categories;
            Iterator it2 = list.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it2.next();
                if (((CategoryPreview) obj).getCategory().getId() == this.$categoryId$inlined) {
                    z = true;
                    continue;
                } else {
                    z = false;
                    continue;
                }
                if (z) {
                    break;
                }
            }
            CategoryPreview categoryPreview = (CategoryPreview) obj;
            List<Campaign> items = categoryPreview != null ? categoryPreview.getItems() : null;
            if (items == null) {
                ((CatalogAllView) this.this$0.getViewState()).onUnexpectedErrorState();
                return;
            }
            Result.Success success = (Result.Success) result;
            items.addAll(((CampaignsCursored) success.getData()).getItems());
            String nextCursor = ((CampaignsCursored) success.getData()).getMeta().getNextCursor();
            Long valueOf = Long.valueOf(this.$categoryId$inlined);
            map = this.this$0.categoriesChannelsCursors;
            map.put(valueOf, nextCursor == null ? "" : nextCursor);
            if (nextCursor != null) {
                ((CatalogAllView) this.this$0.getViewState()).onNestedLoadMoreItems(this.$categoryId$inlined, CatalogCampaignsUiMappingKt.mapToUi(items));
            } else {
                ((CatalogAllView) this.this$0.getViewState()).onNestedLoadMoreComplete(this.$categoryId$inlined);
            }
        } else if (result instanceof Result.Error) {
            ((CatalogAllView) this.this$0.getViewState()).onNestedLoadMoreError(this.$categoryId$inlined);
            resourceManager = this.this$0.resourceManager;
            ((CatalogAllView) this.this$0.getViewState()).showErrorToast((Result.Error) result, resourceManager);
        }
    }
}
