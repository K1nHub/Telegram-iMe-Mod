package com.iMe.p031ui.catalog.tabs.categories;

import com.iMe.mapper.catalog.CatalogCategoriesUiMappingKt;
import com.iMe.model.common.FilterItem;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.catalog.CampaignsCursored;
import com.iMe.storage.domain.model.catalog.CategoryWithCounter;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* renamed from: com.iMe.ui.catalog.tabs.categories.CatalogCategoriesPresenter$getCategoriesObservable$$inlined$mapSuccess$1 */
/* loaded from: classes.dex */
public final class C2010xf97b28f1 extends Lambda implements Function1<Result<? extends List<? extends CategoryWithCounter>>, Result<? extends CampaignsCursored>> {
    final /* synthetic */ Result $channelsResult$inlined;
    final /* synthetic */ CatalogCategoriesPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2010xf97b28f1(CatalogCategoriesPresenter catalogCategoriesPresenter, Result result) {
        super(1);
        this.this$0 = catalogCategoriesPresenter;
        this.$channelsResult$inlined = result;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function1
    public final Result<? extends CampaignsCursored> invoke(Result<? extends List<? extends CategoryWithCounter>> result) {
        FilterItem categoryAll;
        List listOf;
        List plus;
        Intrinsics.checkNotNullParameter(result, "result");
        if (!(result instanceof Result.Success)) {
            if (result instanceof Result.Error) {
                Result<? extends CampaignsCursored> error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.mapSuccess");
                return error$default;
            } else if (result instanceof Object) {
                return result;
            } else {
                return null;
            }
        }
        List list = (List) result.getData();
        List<FilterItem> mapToUi = list != null ? CatalogCategoriesUiMappingKt.mapToUi(list) : null;
        if (mapToUi == null) {
            mapToUi = CollectionsKt__CollectionsKt.emptyList();
        }
        if (!mapToUi.isEmpty()) {
            CatalogCategoriesPresenter catalogCategoriesPresenter = this.this$0;
            categoryAll = catalogCategoriesPresenter.getCategoryAll();
            listOf = CollectionsKt__CollectionsJVMKt.listOf(categoryAll);
            plus = CollectionsKt___CollectionsKt.plus((Collection) listOf, (Iterable) mapToUi);
            catalogCategoriesPresenter.categories = plus;
        }
        return this.$channelsResult$inlined;
    }
}
