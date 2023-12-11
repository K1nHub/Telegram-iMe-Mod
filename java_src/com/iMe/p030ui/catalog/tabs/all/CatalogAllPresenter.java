package com.iMe.p030ui.catalog.tabs.all;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.manager.TelegramApi;
import com.iMe.mapper.catalog.CatalogCampaignsUiMappingKt;
import com.iMe.model.catalog.CampaignItem;
import com.iMe.model.catalog.CategoryWithCampaignsItem;
import com.iMe.p030ui.base.mvp.base.BasePresenter;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.interactor.catalog.CatalogInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.catalog.Campaign;
import com.iMe.storage.domain.model.catalog.CampaignsCursored;
import com.iMe.storage.domain.model.catalog.CategoriesPreviewsCursored;
import com.iMe.storage.domain.model.catalog.CategoryPreview;
import com.iMe.storage.domain.model.catalog.ChatType;
import com.iMe.storage.domain.utils.p029rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p031rx.RxExtKt;
import com.iMe.utils.extentions.p031rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
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
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import moxy.InjectViewState;
import org.telegram.tgnet.TLRPC$Chat;
import p033j$.util.Map;
import timber.log.Timber;
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
        final boolean z = str == null;
        Observable<Result<CategoriesPreviewsCursored>> observeOn = this.catalogInteractor.getCatalogPreview(this.chatType, str).observeOn(this.schedulersProvider.mo1010ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "catalogInteractor\n      …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends CategoriesPreviewsCursored>, Unit>() { // from class: com.iMe.ui.catalog.tabs.all.CatalogAllPresenter$loadCategoriesPreviews$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends CategoriesPreviewsCursored> result) {
                m1582invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1582invoke(Result<? extends CategoriesPreviewsCursored> it) {
                List<BaseNode> mapNewDataToUiItems;
                String str2;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends CategoriesPreviewsCursored> result = it;
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
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.catalog.tabs.all.CatalogAllPresenter$loadCategoriesPreviews$$inlined$subscribeWithErrorHandle$default$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable error) {
                Timber.m6e(error);
                BaseView baseView = BaseView.this;
                if (baseView != null) {
                    String message = error.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView.showToast(message);
                }
                Intrinsics.checkNotNullExpressionValue(error, "error");
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…rror.invoke(error)\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public final void onChannelLoadMore(long j) {
        String str = this.categoriesChannelsCursors.get(Long.valueOf(j));
        if (str == null || str.length() == 0) {
            ((CatalogAllView) getViewState()).onNestedLoadMoreComplete(j);
        } else {
            this.loadMoreChannelsSubject.onNext(TuplesKt.m146to(Long.valueOf(j), str));
        }
    }

    public final void onChannelClick(final CampaignItem campaign) {
        Intrinsics.checkNotNullParameter(campaign, "campaign");
        Observable<TLRPC$Chat> observeOn = this.telegramApi.getChatInfoByUsername(campaign.getShortname()).observeOn(this.schedulersProvider.mo1010ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "telegramApi\n            …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Intrinsics.checkNotNullExpressionValue(RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<TLRPC$Chat, Unit>() { // from class: com.iMe.ui.catalog.tabs.all.CatalogAllPresenter$onChannelClick$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(TLRPC$Chat tLRPC$Chat) {
                m1584invoke(tLRPC$Chat);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1584invoke(TLRPC$Chat it) {
                ChatType chatType;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                CatalogAllView catalogAllView = (CatalogAllView) CatalogAllPresenter.this.getViewState();
                CampaignItem campaignItem = campaign;
                chatType = CatalogAllPresenter.this.chatType;
                catalogAllView.openCampaignDetailsScreen(campaignItem, it, chatType);
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.catalog.tabs.all.CatalogAllPresenter$onChannelClick$$inlined$subscribeWithErrorHandle$default$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable error) {
                Timber.m6e(error);
                BaseView baseView = BaseView.this;
                if (baseView != null) {
                    String message = error.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView.showToast(message);
                }
                Intrinsics.checkNotNullExpressionValue(error, "error");
            }
        })), "viewState: BaseView? = n…rror.invoke(error)\n    })");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        subscribeToLoadMoreEvents();
        loadCategoriesPreviews();
    }

    private final void subscribeToLoadMoreEvents() {
        Observable<Pair<Long, String>> hide = this.loadMoreChannelsSubject.hide();
        final CatalogAllPresenter$subscribeToLoadMoreEvents$1 catalogAllPresenter$subscribeToLoadMoreEvents$1 = new Function1<Pair<? extends Long, ? extends String>, String>() { // from class: com.iMe.ui.catalog.tabs.all.CatalogAllPresenter$subscribeToLoadMoreEvents$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ String invoke(Pair<? extends Long, ? extends String> pair) {
                return invoke2((Pair<Long, String>) pair);
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final String invoke2(Pair<Long, String> it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return it.getSecond();
            }
        };
        Observable<GroupedObservable<K, Pair<Long, String>>> groupBy = hide.groupBy(new Function() { // from class: com.iMe.ui.catalog.tabs.all.CatalogAllPresenter$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                String subscribeToLoadMoreEvents$lambda$2;
                subscribeToLoadMoreEvents$lambda$2 = CatalogAllPresenter.subscribeToLoadMoreEvents$lambda$2(Function1.this, obj);
                return subscribeToLoadMoreEvents$lambda$2;
            }
        });
        final CatalogAllPresenter$subscribeToLoadMoreEvents$2 catalogAllPresenter$subscribeToLoadMoreEvents$2 = new Function1<GroupedObservable<String, Pair<? extends Long, ? extends String>>, Observable<Pair<? extends Long, ? extends String>>>() { // from class: com.iMe.ui.catalog.tabs.all.CatalogAllPresenter$subscribeToLoadMoreEvents$2
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final Observable<Pair<Long, String>> invoke2(GroupedObservable<String, Pair<Long, String>> it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return it.debounce(500L, TimeUnit.MILLISECONDS);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Observable<Pair<? extends Long, ? extends String>> invoke(GroupedObservable<String, Pair<? extends Long, ? extends String>> groupedObservable) {
                return invoke2((GroupedObservable<String, Pair<Long, String>>) groupedObservable);
            }
        };
        Observable observeOn = Observable.merge(groupBy.map(new Function() { // from class: com.iMe.ui.catalog.tabs.all.CatalogAllPresenter$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Observable subscribeToLoadMoreEvents$lambda$3;
                subscribeToLoadMoreEvents$lambda$3 = CatalogAllPresenter.subscribeToLoadMoreEvents$lambda$3(Function1.this, obj);
                return subscribeToLoadMoreEvents$lambda$3;
            }
        })).subscribeOn(this.schedulersProvider.mo1011io()).observeOn(this.schedulersProvider.mo1010ui());
        final Function1<Pair<? extends Long, ? extends String>, Unit> function1 = new Function1<Pair<? extends Long, ? extends String>, Unit>() { // from class: com.iMe.ui.catalog.tabs.all.CatalogAllPresenter$subscribeToLoadMoreEvents$3
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Pair<? extends Long, ? extends String> pair) {
                invoke2((Pair<Long, String>) pair);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Pair<Long, String> pair) {
                CatalogAllPresenter.this.loadMoreChannels(pair.getFirst().longValue(), pair.getSecond());
            }
        };
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
    public final void loadMoreChannels(final long j, String str) {
        Observable<Result<CampaignsCursored>> observeOn = this.catalogInteractor.getCampaignsByCategoryId(j, this.chatType, str).observeOn(this.schedulersProvider.mo1010ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "catalogInteractor\n      …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends CampaignsCursored>, Unit>() { // from class: com.iMe.ui.catalog.tabs.all.CatalogAllPresenter$loadMoreChannels$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends CampaignsCursored> result) {
                m1583invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1583invoke(Result<? extends CampaignsCursored> it) {
                ResourceManager resourceManager;
                List list;
                Object obj;
                Map map;
                boolean z;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends CampaignsCursored> result = it;
                if (result instanceof Result.Success) {
                    list = CatalogAllPresenter.this.categories;
                    Iterator it2 = list.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            obj = null;
                            break;
                        }
                        obj = it2.next();
                        if (((CategoryPreview) obj).getCategory().getId() == j) {
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
                        ((CatalogAllView) CatalogAllPresenter.this.getViewState()).onUnexpectedErrorState();
                        return;
                    }
                    Result.Success success = (Result.Success) result;
                    items.addAll(((CampaignsCursored) success.getData()).getItems());
                    String nextCursor = ((CampaignsCursored) success.getData()).getMeta().getNextCursor();
                    Long valueOf = Long.valueOf(j);
                    map = CatalogAllPresenter.this.categoriesChannelsCursors;
                    map.put(valueOf, nextCursor == null ? "" : nextCursor);
                    if (nextCursor != null) {
                        ((CatalogAllView) CatalogAllPresenter.this.getViewState()).onNestedLoadMoreItems(j, CatalogCampaignsUiMappingKt.mapToUi(items));
                    } else {
                        ((CatalogAllView) CatalogAllPresenter.this.getViewState()).onNestedLoadMoreComplete(j);
                    }
                } else if (result instanceof Result.Error) {
                    ((CatalogAllView) CatalogAllPresenter.this.getViewState()).onNestedLoadMoreError(j);
                    resourceManager = CatalogAllPresenter.this.resourceManager;
                    ((CatalogAllView) CatalogAllPresenter.this.getViewState()).showErrorToast((Result.Error) result, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.catalog.tabs.all.CatalogAllPresenter$loadMoreChannels$$inlined$subscribeWithErrorHandle$default$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable error) {
                Timber.m6e(error);
                BaseView baseView = BaseView.this;
                if (baseView != null) {
                    String message = error.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView.showToast(message);
                }
                Intrinsics.checkNotNullExpressionValue(error, "error");
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…rror.invoke(error)\n    })");
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
            Pair m146to = TuplesKt.m146to(new CategoryWithCampaignsItem(categoryPreview.getCategory(), CatalogCampaignsUiMappingKt.mapToUi(categoryPreview.getItems()), categoryPreview.getMeta().getNextCursor() == null), categoryPreview.getMeta().getNextCursor());
            linkedHashMap.put(m146to.getFirst(), m146to.getSecond());
        }
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            Map.EL.putIfAbsent(this.categoriesChannelsCursors, Long.valueOf(((CategoryWithCampaignsItem) entry.getKey()).getCategory().getId()), entry.getValue());
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) linkedHashMap.keySet());
        return mutableList;
    }
}
