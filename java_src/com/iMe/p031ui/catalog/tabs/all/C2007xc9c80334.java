package com.iMe.p031ui.catalog.tabs.all;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.catalog.CategoriesPreviewsCursored;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.catalog.tabs.all.CatalogAllPresenter$loadCategoriesPreviews$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes.dex */
public final class C2007xc9c80334 extends Lambda implements Function1<Result<? extends CategoriesPreviewsCursored>, Unit> {
    final /* synthetic */ boolean $isInitialLoad$inlined;
    final /* synthetic */ CatalogAllPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2007xc9c80334(CatalogAllPresenter catalogAllPresenter, boolean z) {
        super(1);
        this.this$0 = catalogAllPresenter;
        this.$isInitialLoad$inlined = z;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends CategoriesPreviewsCursored> result) {
        m1327invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1327invoke(Result<? extends CategoriesPreviewsCursored> it) {
        List<BaseNode> mapNewDataToUiItems;
        String str;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends CategoriesPreviewsCursored> result = it;
        if (result instanceof Result.Success) {
            mapNewDataToUiItems = this.this$0.mapNewDataToUiItems((CategoriesPreviewsCursored) ((Result.Success) result).getData());
            if (this.$isInitialLoad$inlined) {
                ((CatalogAllView) this.this$0.getViewState()).showRefreshing(false);
                if (mapNewDataToUiItems.isEmpty()) {
                    ((CatalogAllView) this.this$0.getViewState()).onEmptyState();
                } else {
                    ((CatalogAllView) this.this$0.getViewState()).onCategoriesLoaded(mapNewDataToUiItems);
                }
            } else {
                ((CatalogAllView) this.this$0.getViewState()).onLoadMoreItems(mapNewDataToUiItems);
            }
            str = this.this$0.categoriesCursor;
            if (str == null) {
                ((CatalogAllView) this.this$0.getViewState()).onLoadMoreComplete();
            }
        } else if (result instanceof Result.Loading) {
            if (this.$isInitialLoad$inlined) {
                ((CatalogAllView) this.this$0.getViewState()).showRefreshing(true);
            }
        } else if (result instanceof Result.Error) {
            if (!this.$isInitialLoad$inlined) {
                ((CatalogAllView) this.this$0.getViewState()).onLoadMoreError();
            } else if (((Result.Error) result).getError().isNoConnectionStatus()) {
                ((CatalogAllView) this.this$0.getViewState()).onNoInternetErrorState();
            } else {
                ((CatalogAllView) this.this$0.getViewState()).onUnexpectedErrorState();
            }
        }
    }
}
