package com.smedialink.p031ui.catalog.tabs.categories;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.smedialink.manager.TelegramApi;
import com.smedialink.mapper.catalog.CatalogCampaignsUiMappingKt;
import com.smedialink.model.catalog.CampaignItem;
import com.smedialink.model.common.FilterItem;
import com.smedialink.model.common.FiltersListItem;
import com.smedialink.model.common.GlobalStateItem;
import com.smedialink.model.state.GlobalState;
import com.smedialink.p031ui.base.mvp.base.BasePresenter;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.domain.interactor.catalog.CatalogInteractor;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.catalog.CampaignsCursored;
import com.smedialink.storage.domain.model.catalog.CategoryWithCounter;
import com.smedialink.storage.domain.model.catalog.ChatType;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.p033rx.RxExtKt;
import com.smedialink.utils.extentions.p033rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
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
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3286R;
import org.telegram.tgnet.TLRPC$Chat;
/* compiled from: CatalogCategoriesPresenter.kt */
@InjectViewState
/* renamed from: com.smedialink.ui.catalog.tabs.categories.CatalogCategoriesPresenter */
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

    public final void loadChannels(boolean z) {
        Observable<Result<CampaignsCursored>> observeOn = getChannelsObservable().observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "getChannelsObservable()\n…(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1880xb19ad2ea(this, z)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1881xb19ad2eb(null)));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public final void onChannelClick(CampaignItem campaign) {
        Intrinsics.checkNotNullParameter(campaign, "campaign");
        Observable<TLRPC$Chat> observeOn = this.telegramApi.getChatInfoByUsername(campaign.getShortname()).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "telegramApi\n            …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Intrinsics.checkNotNullExpressionValue(RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1884xc0315c98(this, campaign)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1885xc0315c99(null))), "viewState: BaseView? = n…  onError.invoke()\n    })");
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

    private final void loadInitial(boolean z) {
        Observable<Result<CampaignsCursored>> allCampaigns = this.catalogInteractor.getAllCampaigns(this.chatType, this.categoriesChannelsCursors.get(Long.valueOf(getSelectedCategoryId())));
        final CatalogCategoriesPresenter$loadInitial$1 catalogCategoriesPresenter$loadInitial$1 = new CatalogCategoriesPresenter$loadInitial$1(this, z);
        Observable observeOn = allCampaigns.concatMap(new Function() { // from class: com.smedialink.ui.catalog.tabs.categories.CatalogCategoriesPresenter$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource loadInitial$lambda$4;
                loadInitial$lambda$4 = CatalogCategoriesPresenter.loadInitial$lambda$4(Function1.this, obj);
                return loadInitial$lambda$4;
            }
        }).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "private fun loadInitial(…     .autoDispose()\n    }");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1882x9d757cd0(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1883x9d757cd1(null)));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
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
    public final Observable<Result<CampaignsCursored>> getCategoriesObservable(Result<CampaignsCursored> result, boolean z) {
        Observable<Result<List<CategoryWithCounter>>> observeOn = this.catalogInteractor.getCategories(this.chatType, z).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "catalogInteractor\n      …(schedulersProvider.ui())");
        final C1879xf97b28f1 c1879xf97b28f1 = new C1879xf97b28f1(this, result);
        Observable map = observeOn.map(new Function(c1879xf97b28f1) { // from class: com.smedialink.ui.catalog.tabs.categories.CatalogCategoriesPresenter$inlined$sam$i$io_reactivex_functions_Function$0
            private final /* synthetic */ Function1 function;

            {
                Intrinsics.checkNotNullParameter(c1879xf97b28f1, "function");
                this.function = c1879xf97b28f1;
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
        String upperCase = this.resourceManager.getString(C3286R.string.catalog_all).toUpperCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
        return new FilterItem(-1L, upperCase, true);
    }

    /* compiled from: CatalogCategoriesPresenter.kt */
    /* renamed from: com.smedialink.ui.catalog.tabs.categories.CatalogCategoriesPresenter$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
