package com.smedialink.p031ui.catalog.tabs.all;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.smedialink.manager.TelegramApi;
import com.smedialink.mapper.catalog.CatalogCampaignsUiMappingKt;
import com.smedialink.model.catalog.CampaignItem;
import com.smedialink.model.catalog.CategoryWithCampaignsItem;
import com.smedialink.p031ui.base.mvp.base.BasePresenter;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.domain.interactor.catalog.CatalogInteractor;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.catalog.Campaign;
import com.smedialink.storage.domain.model.catalog.CampaignsCursored;
import com.smedialink.storage.domain.model.catalog.CategoriesPreviewsCursored;
import com.smedialink.storage.domain.model.catalog.CategoryPreview;
import com.smedialink.storage.domain.model.catalog.ChatType;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.p033rx.RxExtKt;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.observables.GroupedObservable;
import io.reactivex.subjects.PublishSubject;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import moxy.InjectViewState;
import org.telegram.tgnet.TLRPC$Chat;
import p034j$.util.Map;
import timber.log.Timber;
/* compiled from: CatalogAllPresenter.kt */
@InjectViewState
/* renamed from: com.smedialink.ui.catalog.tabs.all.CatalogAllPresenter */
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
        final boolean z = str == null;
        Observable<Result<CategoriesPreviewsCursored>> observeOn = this.catalogInteractor.getCatalogPreview(this.chatType, str).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "catalogInteractor\n      …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new Consumer() { // from class: com.smedialink.ui.catalog.tabs.all.CatalogAllPresenter$loadCategoriesPreviews$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                List<T> mapNewDataToUiItems;
                String str2;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
                if (result instanceof Result.Success) {
                    mapNewDataToUiItems = CatalogAllPresenter.this.mapNewDataToUiItems((CategoriesPreviewsCursored) ((Result.Success) result).getData());
                    if (z) {
                        ((CatalogAllView) CatalogAllPresenter.this.getViewState()).showRefreshing(false);
                        if (mapNewDataToUiItems.isEmpty()) {
                            ((CatalogAllView) CatalogAllPresenter.this.getViewState()).onEmptyState();
                        } else {
                            ((CatalogAllView) CatalogAllPresenter.this.getViewState()).onCategoriesLoaded(mapNewDataToUiItems);
                        }
                    } else {
                        ((CatalogAllView) CatalogAllPresenter.this.getViewState()).onLoadMoreItems(mapNewDataToUiItems);
                    }
                    str2 = CatalogAllPresenter.this.categoriesCursor;
                    if (str2 == null) {
                        ((CatalogAllView) CatalogAllPresenter.this.getViewState()).onLoadMoreComplete();
                    }
                } else if (result instanceof Result.Loading) {
                    if (z) {
                        ((CatalogAllView) CatalogAllPresenter.this.getViewState()).showRefreshing(true);
                    }
                } else if (result instanceof Result.Error) {
                    if (!z) {
                        ((CatalogAllView) CatalogAllPresenter.this.getViewState()).onLoadMoreError();
                    } else if (((Result.Error) result).getError().isNoConnectionStatus()) {
                        ((CatalogAllView) CatalogAllPresenter.this.getViewState()).onNoInternetErrorState();
                    } else {
                        ((CatalogAllView) CatalogAllPresenter.this.getViewState()).onUnexpectedErrorState();
                    }
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.catalog.tabs.all.CatalogAllPresenter$loadCategoriesPreviews$$inlined$subscribeWithErrorHandle$default$2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Throwable th) {
                Timber.m4e(th);
                BaseView baseView = BaseView.this;
                if (baseView == null) {
                    return;
                }
                String message = th.getMessage();
                if (message == null) {
                    message = "";
                }
                baseView.showToast(message);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public final void onChannelLoadMore(long j) {
        String str = this.categoriesChannelsCursors.get(Long.valueOf(j));
        if (str == null || str.length() == 0) {
            ((CatalogAllView) getViewState()).onNestedLoadMoreComplete(j);
        } else {
            this.loadMoreChannelsSubject.onNext(TuplesKt.m100to(Long.valueOf(j), str));
        }
    }

    public final void onChannelClick(final CampaignItem campaign) {
        Intrinsics.checkNotNullParameter(campaign, "campaign");
        Observable<TLRPC$Chat> observeOn = this.telegramApi.getChatInfoByUsername(campaign.getShortname()).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "telegramApi\n            …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Intrinsics.checkNotNullExpressionValue(RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null).subscribe(new Consumer() { // from class: com.smedialink.ui.catalog.tabs.all.CatalogAllPresenter$onChannelClick$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                ChatType chatType;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                CatalogAllView catalogAllView = (CatalogAllView) CatalogAllPresenter.this.getViewState();
                CampaignItem campaignItem = campaign;
                chatType = CatalogAllPresenter.this.chatType;
                catalogAllView.openCampaignDetailsScreen(campaignItem, (TLRPC$Chat) it, chatType);
            }
        }, new Consumer() { // from class: com.smedialink.ui.catalog.tabs.all.CatalogAllPresenter$onChannelClick$$inlined$subscribeWithErrorHandle$default$2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Throwable th) {
                Timber.m4e(th);
                BaseView baseView = BaseView.this;
                if (baseView == null) {
                    return;
                }
                String message = th.getMessage();
                if (message == null) {
                    message = "";
                }
                baseView.showToast(message);
            }
        }), "viewState: BaseView? = n…  onError.invoke()\n    })");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        subscribeToLoadMoreEvents();
        loadCategoriesPreviews();
    }

    private final void subscribeToLoadMoreEvents() {
        Disposable subscribe = Observable.merge(this.loadMoreChannelsSubject.hide().groupBy(CatalogAllPresenter$$ExternalSyntheticLambda2.INSTANCE).map(CatalogAllPresenter$$ExternalSyntheticLambda1.INSTANCE)).subscribeOn(this.schedulersProvider.mo708io()).observeOn(this.schedulersProvider.mo707ui()).subscribe(new Consumer() { // from class: com.smedialink.ui.catalog.tabs.all.CatalogAllPresenter$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                CatalogAllPresenter.m1424subscribeToLoadMoreEvents$lambda4(CatalogAllPresenter.this, (Pair) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "merge(\n                 …ls(it.first, it.second) }");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: subscribeToLoadMoreEvents$lambda-2  reason: not valid java name */
    public static final String m1422subscribeToLoadMoreEvents$lambda2(Pair it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return (String) it.getSecond();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: subscribeToLoadMoreEvents$lambda-3  reason: not valid java name */
    public static final Observable m1423subscribeToLoadMoreEvents$lambda3(GroupedObservable it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return it.debounce(500L, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: subscribeToLoadMoreEvents$lambda-4  reason: not valid java name */
    public static final void m1424subscribeToLoadMoreEvents$lambda4(CatalogAllPresenter this$0, Pair pair) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.loadMoreChannels(((Number) pair.getFirst()).longValue(), (String) pair.getSecond());
    }

    private final void loadMoreChannels(final long j, String str) {
        Observable<Result<CampaignsCursored>> observeOn = this.catalogInteractor.getCampaignsByCategoryId(j, this.chatType, str).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "catalogInteractor\n      …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new Consumer() { // from class: com.smedialink.ui.catalog.tabs.all.CatalogAllPresenter$loadMoreChannels$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                ResourceManager resourceManager;
                List list;
                T t;
                Map map;
                boolean z;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
                if (result instanceof Result.Success) {
                    list = CatalogAllPresenter.this.categories;
                    Iterator<T> it2 = list.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            t = null;
                            break;
                        }
                        t = it2.next();
                        if (((CategoryPreview) t).getCategory().getId() == j) {
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
                    CategoryPreview categoryPreview = (CategoryPreview) t;
                    List<Campaign> items = categoryPreview != null ? categoryPreview.getItems() : null;
                    if (items == null) {
                        ((CatalogAllView) CatalogAllPresenter.this.getViewState()).onUnexpectedErrorState();
                        return;
                    }
                    Result.Success success = (Result.Success) result;
                    items.addAll(((CampaignsCursored) success.getData()).getItems());
                    String nextCursor = ((CampaignsCursored) success.getData()).getMeta().getNextCursor();
                    map = CatalogAllPresenter.this.categoriesChannelsCursors;
                    map.put(Long.valueOf(j), nextCursor == null ? "" : nextCursor);
                    if (nextCursor != null) {
                        ((CatalogAllView) CatalogAllPresenter.this.getViewState()).onNestedLoadMoreItems(j, CatalogCampaignsUiMappingKt.mapToUi(items));
                    } else {
                        ((CatalogAllView) CatalogAllPresenter.this.getViewState()).onNestedLoadMoreComplete(j);
                    }
                } else if (result instanceof Result.Error) {
                    ((CatalogAllView) CatalogAllPresenter.this.getViewState()).onNestedLoadMoreError(j);
                    ErrorModel error = ((Result.Error) result).getError();
                    resourceManager = CatalogAllPresenter.this.resourceManager;
                    ((CatalogAllView) CatalogAllPresenter.this.getViewState()).showToast(error.getMessage(resourceManager));
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.catalog.tabs.all.CatalogAllPresenter$loadMoreChannels$$inlined$subscribeWithErrorHandle$default$2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Throwable th) {
                Timber.m4e(th);
                BaseView baseView = BaseView.this;
                if (baseView == null) {
                    return;
                }
                String message = th.getMessage();
                if (message == null) {
                    message = "";
                }
                baseView.showToast(message);
            }
        });
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
            Pair m100to = TuplesKt.m100to(new CategoryWithCampaignsItem(categoryPreview.getCategory(), CatalogCampaignsUiMappingKt.mapToUi(categoryPreview.getItems()), categoryPreview.getMeta().getNextCursor() == null), categoryPreview.getMeta().getNextCursor());
            linkedHashMap.put(m100to.getFirst(), m100to.getSecond());
        }
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            Map.EL.putIfAbsent(this.categoriesChannelsCursors, Long.valueOf(((CategoryWithCampaignsItem) entry.getKey()).getCategory().getId()), entry.getValue());
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) linkedHashMap.keySet());
        return mutableList;
    }
}
