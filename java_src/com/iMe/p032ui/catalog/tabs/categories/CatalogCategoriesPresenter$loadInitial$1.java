package com.iMe.p032ui.catalog.tabs.categories;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.catalog.CampaignsCursored;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CatalogCategoriesPresenter.kt */
/* renamed from: com.iMe.ui.catalog.tabs.categories.CatalogCategoriesPresenter$loadInitial$1 */
/* loaded from: classes3.dex */
public final class CatalogCategoriesPresenter$loadInitial$1 extends Lambda implements Function1<Result<? extends CampaignsCursored>, ObservableSource<? extends Result<? extends CampaignsCursored>>> {
    final /* synthetic */ boolean $isLanguageChanged;
    final /* synthetic */ CatalogCategoriesPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CatalogCategoriesPresenter$loadInitial$1(CatalogCategoriesPresenter catalogCategoriesPresenter, boolean z) {
        super(1);
        this.this$0 = catalogCategoriesPresenter;
        this.$isLanguageChanged = z;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final ObservableSource<? extends Result<CampaignsCursored>> invoke2(Result<CampaignsCursored> result) {
        Observable categoriesObservable;
        Intrinsics.checkNotNullParameter(result, "result");
        categoriesObservable = this.this$0.getCategoriesObservable(result, this.$isLanguageChanged);
        return categoriesObservable;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ ObservableSource<? extends Result<? extends CampaignsCursored>> invoke(Result<? extends CampaignsCursored> result) {
        return invoke2((Result<CampaignsCursored>) result);
    }
}
