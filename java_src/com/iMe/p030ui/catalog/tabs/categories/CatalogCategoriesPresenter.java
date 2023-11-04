package com.iMe.p030ui.catalog.tabs.categories;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.manager.TelegramApi;
import com.iMe.mapper.catalog.CatalogCampaignsUiMappingKt;
import com.iMe.mapper.catalog.CatalogCategoriesUiMappingKt;
import com.iMe.model.catalog.CampaignItem;
import com.iMe.model.common.FilterItem;
import com.iMe.model.common.FiltersListItem;
import com.iMe.model.common.GlobalStateItem;
import com.iMe.model.state.GlobalState;
import com.iMe.p030ui.base.mvp.base.BasePresenter;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.data.network.model.error.ErrorModel;
import com.iMe.storage.domain.interactor.catalog.CatalogInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.catalog.CampaignsCursored;
import com.iMe.storage.domain.model.catalog.CategoryWithCounter;
import com.iMe.storage.domain.model.catalog.ChatType;
import com.iMe.storage.domain.utils.p029rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p031rx.RxExtKt;
import com.iMe.utils.extentions.p031rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3634R;
import org.telegram.tgnet.TLRPC$Chat;
import timber.log.Timber;
/* compiled from: CatalogCategoriesPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.catalog.tabs.categories.CatalogCategoriesPresenter */
/* loaded from: classes3.dex */
public final class CatalogCategoriesPresenter extends BasePresenter<CatalogCategoriesView> {
    private final CatalogInteractor catalogInteractor;
    private List<FilterItem> categories;
    private final Map<Long, String> categoriesChannelsCursors;
    private final Map<Long, Set<BaseNode>> channelsByCategories;
    private final ChatType chatType;
    private final ResourceManager resourceManager;
    private final SchedulersProvider schedulersProvider;
    private final TelegramApi telegramApi;

    static {
        new Companion(null);
    }

    public CatalogCategoriesPresenter(ChatType chatType, CatalogInteractor catalogInteractor, ResourceManager resourceManager, SchedulersProvider schedulersProvider, TelegramApi telegramApi) {
        List<FilterItem> emptyList;
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
        this.channelsByCategories = new LinkedHashMap();
        this.categoriesChannelsCursors = new LinkedHashMap();
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.categories = emptyList;
    }

    private final long getSelectedCategoryId() {
        Object obj;
        Iterator<T> it = this.categories.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (((FilterItem) obj).isSelected()) {
                break;
            }
        }
        FilterItem filterItem = (FilterItem) obj;
        if (filterItem != null) {
            return filterItem.getId();
        }
        return -1L;
    }

    public static /* synthetic */ void reloadAll$default(CatalogCategoriesPresenter catalogCategoriesPresenter, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        catalogCategoriesPresenter.reloadAll(z);
    }

    public final void reloadAll(boolean z) {
        List<FilterItem> emptyList;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.categories = emptyList;
        reloadChannels(true, z);
    }

    public static /* synthetic */ void reloadChannels$default(CatalogCategoriesPresenter catalogCategoriesPresenter, boolean z, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            z2 = false;
        }
        catalogCategoriesPresenter.reloadChannels(z, z2);
    }

    public final void reloadChannels(boolean z, boolean z2) {
        List<BaseNode> mutableListOf;
        if (this.categories.isEmpty() && !z) {
            mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(new GlobalStateItem(GlobalState.Empty.Common.INSTANCE));
            ((CatalogCategoriesView) getViewState()).renderNodes(mutableListOf);
            return;
        }
        clearSubscriptions();
        this.channelsByCategories.clear();
        this.categoriesChannelsCursors.clear();
        if (z) {
            loadInitial(z2);
        } else {
            loadChannels(false);
        }
    }

    public final void onCategorySelected(long j) {
        int collectionSizeOrDefault;
        boolean z;
        List<? extends BaseNode> mutableList;
        if (getSelectedCategoryId() == j) {
            return;
        }
        ((CatalogCategoriesView) getViewState()).onLoadMoreComplete();
        clearSubscriptions();
        List<FilterItem> list = this.categories;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it = list.iterator();
        while (true) {
            z = true;
            if (!it.hasNext()) {
                break;
            }
            FilterItem filterItem = (FilterItem) it.next();
            arrayList.add(FilterItem.copy$default(filterItem, 0L, null, filterItem.getId() == j, 3, null));
        }
        this.categories = arrayList;
        Set<BaseNode> set = this.channelsByCategories.get(Long.valueOf(j));
        CatalogCategoriesView catalogCategoriesView = (CatalogCategoriesView) getViewState();
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) (set == null ? SetsKt__SetsKt.emptySet() : set));
        catalogCategoriesView.renderNodes(getNodesWithCategoriesFilter(mutableList));
        if (set != null && !set.isEmpty()) {
            z = false;
        }
        if (z) {
            loadChannels(false);
        } else if (this.categoriesChannelsCursors.get(Long.valueOf(j)) != null) {
            ((CatalogCategoriesView) getViewState()).resetLoadMore();
        } else {
            ((CatalogCategoriesView) getViewState()).onLoadMoreComplete();
        }
    }

    public final void loadChannels(final boolean z) {
        Observable<Result<CampaignsCursored>> observeOn = getChannelsObservable().observeOn(this.schedulersProvider.mo1010ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "getChannelsObservable()\n…(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends CampaignsCursored>, Unit>() { // from class: com.iMe.ui.catalog.tabs.categories.CatalogCategoriesPresenter$loadChannels$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends CampaignsCursored> result) {
                m1584invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1584invoke(Result<? extends CampaignsCursored> it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                CatalogCategoriesPresenter.this.processChannelsResult(it, z);
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.catalog.tabs.categories.CatalogCategoriesPresenter$loadChannels$$inlined$subscribeWithErrorHandle$default$2
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

    public final void onChannelClick(final CampaignItem campaign) {
        Intrinsics.checkNotNullParameter(campaign, "campaign");
        Observable<TLRPC$Chat> observeOn = this.telegramApi.getChatInfoByUsername(campaign.getShortname()).observeOn(this.schedulersProvider.mo1010ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "telegramApi\n            …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Intrinsics.checkNotNullExpressionValue(RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<TLRPC$Chat, Unit>() { // from class: com.iMe.ui.catalog.tabs.categories.CatalogCategoriesPresenter$onChannelClick$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(TLRPC$Chat tLRPC$Chat) {
                m1586invoke(tLRPC$Chat);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1586invoke(TLRPC$Chat it) {
                ChatType chatType;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                CatalogCategoriesView catalogCategoriesView = (CatalogCategoriesView) CatalogCategoriesPresenter.this.getViewState();
                CampaignItem campaignItem = campaign;
                chatType = CatalogCategoriesPresenter.this.chatType;
                catalogCategoriesView.openCampaignDetailsScreen(campaignItem, it, chatType);
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.catalog.tabs.categories.CatalogCategoriesPresenter$onChannelClick$$inlined$subscribeWithErrorHandle$default$2
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
        loadInitial$default(this, false, 1, null);
    }

    static /* synthetic */ void loadInitial$default(CatalogCategoriesPresenter catalogCategoriesPresenter, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        catalogCategoriesPresenter.loadInitial(z);
    }

    private final void loadInitial(final boolean z) {
        Observable<Result<CampaignsCursored>> allCampaigns = this.catalogInteractor.getAllCampaigns(this.chatType, this.categoriesChannelsCursors.get(Long.valueOf(getSelectedCategoryId())));
        final Function1<Result<? extends CampaignsCursored>, ObservableSource<? extends Result<? extends CampaignsCursored>>> function1 = new Function1<Result<? extends CampaignsCursored>, ObservableSource<? extends Result<? extends CampaignsCursored>>>() { // from class: com.iMe.ui.catalog.tabs.categories.CatalogCategoriesPresenter$loadInitial$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final ObservableSource<? extends Result<CampaignsCursored>> invoke2(Result<CampaignsCursored> result) {
                Observable categoriesObservable;
                Intrinsics.checkNotNullParameter(result, "result");
                categoriesObservable = CatalogCategoriesPresenter.this.getCategoriesObservable(result, z);
                return categoriesObservable;
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ ObservableSource<? extends Result<? extends CampaignsCursored>> invoke(Result<? extends CampaignsCursored> result) {
                return invoke2((Result<CampaignsCursored>) result);
            }
        };
        Observable observeOn = allCampaigns.concatMap(new Function() { // from class: com.iMe.ui.catalog.tabs.categories.CatalogCategoriesPresenter$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource loadInitial$lambda$4;
                loadInitial$lambda$4 = CatalogCategoriesPresenter.loadInitial$lambda$4(Function1.this, obj);
                return loadInitial$lambda$4;
            }
        }).observeOn(this.schedulersProvider.mo1010ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "private fun loadInitial(…     .autoDispose()\n    }");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends CampaignsCursored>, Unit>() { // from class: com.iMe.ui.catalog.tabs.categories.CatalogCategoriesPresenter$loadInitial$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends CampaignsCursored> result) {
                m1585invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1585invoke(Result<? extends CampaignsCursored> it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                CatalogCategoriesPresenter.this.processChannelsResult(it, false);
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.catalog.tabs.categories.CatalogCategoriesPresenter$loadInitial$$inlined$subscribeWithErrorHandle$default$2
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
    public static final ObservableSource loadInitial$lambda$4(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void processChannelsResult(Result<CampaignsCursored> result, boolean z) {
        if (result instanceof Result.Success) {
            onChannelsLoadingSuccess((CampaignsCursored) ((Result.Success) result).getData(), z);
        } else if (result instanceof Result.Loading) {
            onChannelsLoading(z);
        } else if (result instanceof Result.Error) {
            onChannelsLoadingError(((Result.Error) result).getError(), z);
        }
    }

    private final void onChannelsLoadingSuccess(CampaignsCursored campaignsCursored, boolean z) {
        Set<BaseNode> mutableSet;
        List<BaseNode> mutableListOf;
        List<CampaignItem> mapToUi = CatalogCampaignsUiMappingKt.mapToUi(campaignsCursored.getItems());
        String nextCursor = campaignsCursored.getMeta().getNextCursor();
        this.categoriesChannelsCursors.put(Long.valueOf(getSelectedCategoryId()), nextCursor);
        if (z) {
            onLoadMoreChannels(mapToUi);
        } else if (mapToUi.isEmpty()) {
            mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(new GlobalStateItem(GlobalState.Empty.Common.INSTANCE));
            ((CatalogCategoriesView) getViewState()).renderNodes(mutableListOf);
            ((CatalogCategoriesView) getViewState()).onLoadMoreComplete();
        } else {
            Map<Long, Set<BaseNode>> map = this.channelsByCategories;
            Long valueOf = Long.valueOf(getSelectedCategoryId());
            mutableSet = CollectionsKt___CollectionsKt.toMutableSet(mapToUi);
            map.put(valueOf, mutableSet);
            ((CatalogCategoriesView) getViewState()).renderNodes(getNodesWithCategoriesFilter(mapToUi));
        }
        if (nextCursor == null) {
            ((CatalogCategoriesView) getViewState()).onLoadMoreComplete();
        } else {
            ((CatalogCategoriesView) getViewState()).resetLoadMore();
        }
    }

    private final void onLoadMoreChannels(List<CampaignItem> list) {
        List<? extends BaseNode> mutableList;
        Set<BaseNode> set = this.channelsByCategories.get(Long.valueOf(getSelectedCategoryId()));
        if (set != null) {
            set.addAll(list);
        } else {
            set = null;
        }
        if (set == null) {
            ((CatalogCategoriesView) getViewState()).onLoadMoreError();
            return;
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) set);
        ((CatalogCategoriesView) getViewState()).onLoadMoreItems(getNodesWithCategoriesFilter(mutableList));
    }

    private final void onChannelsLoading(boolean z) {
        List<BaseNode> mutableListOf;
        if (z) {
            return;
        }
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(new GlobalStateItem(GlobalState.Progress.INSTANCE));
        CatalogCategoriesView catalogCategoriesView = (CatalogCategoriesView) getViewState();
        if (!this.categories.isEmpty()) {
            mutableListOf = getNodesWithCategoriesFilter(mutableListOf);
        }
        catalogCategoriesView.renderNodes(mutableListOf);
        ((CatalogCategoriesView) getViewState()).onLoadMoreComplete();
    }

    private final void onChannelsLoadingError(ErrorModel errorModel, boolean z) {
        List<? extends BaseNode> listOf;
        if (z) {
            ((CatalogCategoriesView) getViewState()).onLoadMoreError();
            ((CatalogCategoriesView) getViewState()).showToast(errorModel.getMessage(this.resourceManager));
            return;
        }
        CatalogCategoriesView catalogCategoriesView = (CatalogCategoriesView) getViewState();
        listOf = CollectionsKt__CollectionsJVMKt.listOf(new GlobalStateItem(errorModel.isNoConnectionStatus() ? GlobalState.NoInternet.INSTANCE : GlobalState.Unexpected.INSTANCE));
        catalogCategoriesView.renderNodes(getNodesWithCategoriesFilter(listOf));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Observable<Result<CampaignsCursored>> getCategoriesObservable(final Result<CampaignsCursored> result, boolean z) {
        Observable<Result<List<CategoryWithCounter>>> observeOn = this.catalogInteractor.getCategories(this.chatType, z).observeOn(this.schedulersProvider.mo1010ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "catalogInteractor\n      …(schedulersProvider.ui())");
        final Function1<Result<? extends List<? extends CategoryWithCounter>>, Result<? extends CampaignsCursored>> function1 = new Function1<Result<? extends List<? extends CategoryWithCounter>>, Result<? extends CampaignsCursored>>() { // from class: com.iMe.ui.catalog.tabs.categories.CatalogCategoriesPresenter$getCategoriesObservable$$inlined$mapSuccess$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function1
            public final Result<? extends CampaignsCursored> invoke(Result<? extends List<? extends CategoryWithCounter>> result2) {
                FilterItem categoryAll;
                List listOf;
                List plus;
                Intrinsics.checkNotNullParameter(result2, "result");
                if (!(result2 instanceof Result.Success)) {
                    if (result2 instanceof Result.Error) {
                        Result<? extends CampaignsCursored> error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result2).getError(), null, 2, null);
                        Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extensions.ObservableExtKt.mapSuccess");
                        return error$default;
                    } else if (result2 instanceof Object) {
                        return result2;
                    } else {
                        return null;
                    }
                }
                List list = (List) result2.getData();
                List<FilterItem> mapToUi = list != null ? CatalogCategoriesUiMappingKt.mapToUi(list) : null;
                if (mapToUi == null) {
                    mapToUi = CollectionsKt__CollectionsKt.emptyList();
                }
                if (!mapToUi.isEmpty()) {
                    CatalogCategoriesPresenter catalogCategoriesPresenter = CatalogCategoriesPresenter.this;
                    categoryAll = catalogCategoriesPresenter.getCategoryAll();
                    listOf = CollectionsKt__CollectionsJVMKt.listOf(categoryAll);
                    plus = CollectionsKt___CollectionsKt.plus((Collection) listOf, (Iterable) mapToUi);
                    catalogCategoriesPresenter.categories = plus;
                }
                return result;
            }
        };
        Observable map = observeOn.map(new Function(function1) { // from class: com.iMe.ui.catalog.tabs.categories.CatalogCategoriesPresenter$inlined$sam$i$io_reactivex_functions_Function$0
            private final /* synthetic */ Function1 function;

            {
                Intrinsics.checkNotNullParameter(function1, "function");
                this.function = function1;
            }

            @Override // io.reactivex.functions.Function
            public final /* synthetic */ Object apply(Object obj) {
                return this.function.invoke(obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "crossinline body: (T) ->…ult as? R\n        }\n    }");
        return map;
    }

    private final Observable<Result<CampaignsCursored>> getChannelsObservable() {
        if (getSelectedCategoryId() == -1) {
            return this.catalogInteractor.getAllCampaigns(this.chatType, this.categoriesChannelsCursors.get(Long.valueOf(getSelectedCategoryId())));
        }
        return this.catalogInteractor.getCampaignsByCategoryId(getSelectedCategoryId(), this.chatType, this.categoriesChannelsCursors.get(Long.valueOf(getSelectedCategoryId())));
    }

    private final List<BaseNode> getNodesWithCategoriesFilter(List<? extends BaseNode> list) {
        List mutableList;
        List<BaseNode> mutableListOf;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) this.categories);
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(new FiltersListItem(mutableList));
        mutableListOf.addAll(list);
        return mutableListOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final FilterItem getCategoryAll() {
        String upperCase = this.resourceManager.getString(C3634R.string.catalog_all).toUpperCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
        return new FilterItem(-1L, upperCase, true);
    }

    /* compiled from: CatalogCategoriesPresenter.kt */
    /* renamed from: com.iMe.ui.catalog.tabs.categories.CatalogCategoriesPresenter$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
