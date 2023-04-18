package com.iMe.p031ui.catalog.tabs.all;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.manager.TelegramApi;
import com.iMe.mapper.catalog.CatalogCampaignsUiMappingKt;
import com.iMe.model.catalog.CampaignItem;
import com.iMe.model.catalog.CategoryWithCampaignsItem;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.interactor.catalog.CatalogInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.catalog.CampaignsCursored;
import com.iMe.storage.domain.model.catalog.CategoriesPreviewsCursored;
import com.iMe.storage.domain.model.catalog.CategoryPreview;
import com.iMe.storage.domain.model.catalog.ChatType;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p033rx.RxExtKt;
import com.iMe.utils.extentions.p033rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.observables.GroupedObservable;
import io.reactivex.subjects.PublishSubject;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import moxy.InjectViewState;
import org.telegram.tgnet.TLRPC$Chat;
import p034j$.util.Map;
/* compiled from: CatalogAllPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.catalog.tabs.all.CatalogAllPresenter */
/* loaded from: classes3.dex */
public final class CatalogAllPresenter extends BasePresenter<CatalogAllView> {
    private final CatalogInteractor catalogInteractor;
    private final List<CategoryPreview> categories;
    private final Map<Long, String> categoriesChannelsCursors;
    private String categoriesCursor;
    private final ChatType chatType;
    private final PublishSubject<Pair<Long, String>> loadMoreChannelsSubject;
    private final ResourceManager resourceManager;
    private final SchedulersProvider schedulersProvider;
    private final TelegramApi telegramApi;

    public CatalogAllPresenter(ChatType chatType, CatalogInteractor catalogInteractor, ResourceManager resourceManager, SchedulersProvider schedulersProvider, TelegramApi telegramApi) {
        Intrinsics.checkNotNullParameter(chatType, "chatType");
        Intrinsics.checkNotNullParameter(catalogInteractor, "catalogInteractor");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(telegramApi, "telegramApi");
        this.chatType = chatType;
        this.catalogInteractor = catalogInteractor;
        this.resourceManager = resourceManager;
        this.schedulersProvider = schedulersProvider;
        this.telegramApi = telegramApi;
        PublishSubject<Pair<Long, String>> create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create()");
        this.loadMoreChannelsSubject = create;
        this.categories = new ArrayList();
        this.categoriesChannelsCursors = new LinkedHashMap();
    }

    public final void reloadCategories() {
        clearSubscriptions();
        this.categories.clear();
        this.categoriesChannelsCursors.clear();
        this.categoriesCursor = null;
        subscribeToLoadMoreEvents();
        loadCategoriesPreviews();
    }

    public final void loadCategoriesPreviews() {
        String str = this.categoriesCursor;
        boolean z = str == null;
        Observable<Result<CategoriesPreviewsCursored>> observeOn = this.catalogInteractor.getCatalogPreview(this.chatType, str).observeOn(this.schedulersProvider.mo693ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "catalogInteractor\n      …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1930xc9c80334(this, z)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1931xc9c80335(null)));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public final void onChannelLoadMore(long j) {
        String str = this.categoriesChannelsCursors.get(Long.valueOf(j));
        if (str == null || str.length() == 0) {
            ((CatalogAllView) getViewState()).onNestedLoadMoreComplete(j);
        } else {
            this.loadMoreChannelsSubject.onNext(TuplesKt.m80to(Long.valueOf(j), str));
        }
    }

    public final void onChannelClick(CampaignItem campaign) {
        Intrinsics.checkNotNullParameter(campaign, "campaign");
        Observable<TLRPC$Chat> observeOn = this.telegramApi.getChatInfoByUsername(campaign.getShortname()).observeOn(this.schedulersProvider.mo693ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "telegramApi\n            …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Intrinsics.checkNotNullExpressionValue(RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1934x8163b70b(this, campaign)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1935x8163b70c(null))), "viewState: BaseView? = n…  onError.invoke()\n    })");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        subscribeToLoadMoreEvents();
        loadCategoriesPreviews();
    }

    private final void subscribeToLoadMoreEvents() {
        Observable<Pair<Long, String>> hide = this.loadMoreChannelsSubject.hide();
        final CatalogAllPresenter$subscribeToLoadMoreEvents$1 catalogAllPresenter$subscribeToLoadMoreEvents$1 = CatalogAllPresenter$subscribeToLoadMoreEvents$1.INSTANCE;
        Observable<GroupedObservable<K, Pair<Long, String>>> groupBy = hide.groupBy(new Function() { // from class: com.iMe.ui.catalog.tabs.all.CatalogAllPresenter$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                String subscribeToLoadMoreEvents$lambda$2;
                subscribeToLoadMoreEvents$lambda$2 = CatalogAllPresenter.subscribeToLoadMoreEvents$lambda$2(Function1.this, obj);
                return subscribeToLoadMoreEvents$lambda$2;
            }
        });
        final CatalogAllPresenter$subscribeToLoadMoreEvents$2 catalogAllPresenter$subscribeToLoadMoreEvents$2 = CatalogAllPresenter$subscribeToLoadMoreEvents$2.INSTANCE;
        Observable observeOn = Observable.merge(groupBy.map(new Function() { // from class: com.iMe.ui.catalog.tabs.all.CatalogAllPresenter$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Observable subscribeToLoadMoreEvents$lambda$3;
                subscribeToLoadMoreEvents$lambda$3 = CatalogAllPresenter.subscribeToLoadMoreEvents$lambda$3(Function1.this, obj);
                return subscribeToLoadMoreEvents$lambda$3;
            }
        })).subscribeOn(this.schedulersProvider.mo694io()).observeOn(this.schedulersProvider.mo693ui());
        final CatalogAllPresenter$subscribeToLoadMoreEvents$3 catalogAllPresenter$subscribeToLoadMoreEvents$3 = new CatalogAllPresenter$subscribeToLoadMoreEvents$3(this);
        Disposable subscribe = observeOn.subscribe(new Consumer() { // from class: com.iMe.ui.catalog.tabs.all.CatalogAllPresenter$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                CatalogAllPresenter.subscribeToLoadMoreEvents$lambda$4(Function1.this, obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "private fun subscribeToL…     .autoDispose()\n    }");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String subscribeToLoadMoreEvents$lambda$2(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (String) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Observable subscribeToLoadMoreEvents$lambda$3(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Observable) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void subscribeToLoadMoreEvents$lambda$4(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void loadMoreChannels(long j, String str) {
        Observable<Result<CampaignsCursored>> observeOn = this.catalogInteractor.getCampaignsByCategoryId(j, this.chatType, str).observeOn(this.schedulersProvider.mo693ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "catalogInteractor\n      …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1932x585eb812(this, j)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1933x585eb813(null)));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<BaseNode> mapNewDataToUiItems(CategoriesPreviewsCursored categoriesPreviewsCursored) {
        int collectionSizeOrDefault;
        int mapCapacity;
        int coerceAtLeast;
        List<BaseNode> mutableList;
        this.categoriesCursor = categoriesPreviewsCursored.getMeta().getNextCursor();
        this.categories.addAll(categoriesPreviewsCursored.getItems());
        List<CategoryPreview> list = this.categories;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault);
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
        LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
        for (CategoryPreview categoryPreview : list) {
            Pair m80to = TuplesKt.m80to(new CategoryWithCampaignsItem(categoryPreview.getCategory(), CatalogCampaignsUiMappingKt.mapToUi(categoryPreview.getItems()), categoryPreview.getMeta().getNextCursor() == null), categoryPreview.getMeta().getNextCursor());
            linkedHashMap.put(m80to.getFirst(), m80to.getSecond());
        }
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            Map.EL.putIfAbsent(this.categoriesChannelsCursors, Long.valueOf(((CategoryWithCampaignsItem) entry.getKey()).getCategory().getId()), entry.getValue());
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) linkedHashMap.keySet());
        return mutableList;
    }
}
