package com.iMe.p031ui.wallet.staking.programmes;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.i_staking.StakingInteractor;
import com.iMe.mapper.staking.StakingDetailedMetadataUiMappingKt;
import com.iMe.mapper.staking.StakingMetadataUiMappingKt;
import com.iMe.model.common.FilterItem;
import com.iMe.model.common.FiltersListItem;
import com.iMe.model.common.GlobalStateItem;
import com.iMe.model.common.NoChildNode;
import com.iMe.model.staking.StakingDetailsItem;
import com.iMe.model.staking.StakingProgrammeItem;
import com.iMe.model.state.GlobalState;
import com.iMe.model.wallet.home.HeaderItemWithRightButton;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.data.utils.extentions.NumberExtKt;
import com.iMe.storage.domain.interactor.crypto.level.AccountLevelInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.level.AccountLevel;
import com.iMe.storage.domain.model.staking.StakingMetadata;
import com.iMe.storage.domain.model.staking.StakingProgrammes;
import com.iMe.storage.domain.model.staking.StakingProgrammesFilterType;
import com.iMe.storage.domain.model.staking.StakingTabType;
import com.iMe.storage.domain.model.wallet.staking.StakingOrderType;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p032rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import com.iMe.utils.extentions.p032rx.SchedulersExtKt;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.disposables.Disposables;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3558R;
import timber.log.Timber;
/* compiled from: StakingProgrammesPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.staking.programmes.StakingProgrammesPresenter */
/* loaded from: classes4.dex */
public final class StakingProgrammesPresenter extends BasePresenter<StakingProgrammesView> {
    private AccountLevel accountLevel;
    private final AccountLevelInteractor accountLevelInteractor;
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final List<BaseNode> items;
    private final Map<StakingProgrammesFilterType, Integer> itemsCountByFilterType;
    private Long lastItemId;
    private final Map<StakingProgrammesFilterType, Long> lastItemIdByFilterType;
    private final ResourceManager resourceManager;
    private final RxEventBus rxEventBus;
    private final SchedulersProvider schedulersProvider;
    private StakingProgrammesFilterType selectedFilterType;
    private final StakingInteractor stakingInteractor;
    private final List<StakingMetadata> stakingProgrammes;
    private final Map<StakingProgrammesFilterType, List<StakingMetadata>> stakingProgrammesByFilterType;
    private Disposable stakingProgrammesLoadingDisposable;
    private final StakingTabType stakingTabType;

    /* compiled from: StakingProgrammesPresenter.kt */
    /* renamed from: com.iMe.ui.wallet.staking.programmes.StakingProgrammesPresenter$WhenMappings */
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[StakingTabType.values().length];
            try {
                iArr[StakingTabType.ALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[StakingTabType.PARTICIPATED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public StakingProgrammesPresenter(StakingTabType stakingTabType, AccountLevelInteractor accountLevelInteractor, CryptoPreferenceHelper cryptoPreferenceHelper, ResourceManager resourceManager, RxEventBus rxEventBus, SchedulersProvider schedulersProvider, StakingInteractor stakingInteractor) {
        Intrinsics.checkNotNullParameter(stakingTabType, "stakingTabType");
        Intrinsics.checkNotNullParameter(accountLevelInteractor, "accountLevelInteractor");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(rxEventBus, "rxEventBus");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(stakingInteractor, "stakingInteractor");
        this.stakingTabType = stakingTabType;
        this.accountLevelInteractor = accountLevelInteractor;
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.resourceManager = resourceManager;
        this.rxEventBus = rxEventBus;
        this.schedulersProvider = schedulersProvider;
        this.stakingInteractor = stakingInteractor;
        this.stakingProgrammes = new ArrayList();
        this.items = new ArrayList();
        this.stakingProgrammesByFilterType = new LinkedHashMap();
        this.lastItemIdByFilterType = new LinkedHashMap();
        this.itemsCountByFilterType = new LinkedHashMap();
        this.selectedFilterType = StakingProgrammesFilterType.RUNNING;
        Disposable disposed = Disposables.disposed();
        Intrinsics.checkNotNullExpressionValue(disposed, "disposed()");
        this.stakingProgrammesLoadingDisposable = disposed;
    }

    public static /* synthetic */ void reload$default(StakingProgrammesPresenter stakingProgrammesPresenter, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        stakingProgrammesPresenter.reload(z);
    }

    public final void reload(boolean z) {
        this.stakingProgrammesLoadingDisposable.dispose();
        this.lastItemId = null;
        this.stakingProgrammes.clear();
        this.items.clear();
        if (this.stakingTabType == StakingTabType.PARTICIPATED && !z) {
            this.stakingProgrammesByFilterType.clear();
            this.lastItemIdByFilterType.clear();
            this.itemsCountByFilterType.clear();
        }
        loadStakingProgrammes(z, !z);
    }

    public static /* synthetic */ void loadStakingProgrammes$default(StakingProgrammesPresenter stakingProgrammesPresenter, boolean z, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            z2 = false;
        }
        stakingProgrammesPresenter.loadStakingProgrammes(z, z2);
    }

    public final void loadStakingProgrammes(final boolean z, final boolean z2) {
        Long l;
        final boolean z3 = (z || z2) ? false : true;
        if (this.stakingTabType == StakingTabType.PARTICIPATED) {
            l = this.lastItemIdByFilterType.get(this.selectedFilterType);
        } else {
            l = this.lastItemId;
        }
        if (z3 && l == null) {
            ((StakingProgrammesView) getViewState()).onLoadMoreComplete();
            return;
        }
        Observable<Result<StakingProgrammes>> observeOn = getProgrammesObservable(l).observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "getProgrammesObservable(…(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends StakingProgrammes>, Unit>() { // from class: com.iMe.ui.wallet.staking.programmes.StakingProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends StakingProgrammes> result) {
                m1594invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1594invoke(Result<? extends StakingProgrammes> it) {
                RxEventBus rxEventBus;
                StakingTabType stakingTabType;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends StakingProgrammes> result = it;
                if (z2) {
                    rxEventBus = this.rxEventBus;
                    stakingTabType = this.stakingTabType;
                    rxEventBus.publish(new DomainRxEvents.StakingTabRefreshStateChanged(stakingTabType, result instanceof Result.Loading));
                }
                if (result instanceof Result.Success) {
                    StakingProgrammes stakingProgrammes = (StakingProgrammes) ((Result.Success) result).getData();
                    this.onProgrammesDataObtained(stakingProgrammes.getProgrammes(), stakingProgrammes.getTotal(), z3);
                } else if (result instanceof Result.Loading) {
                    if (z) {
                        this.renderGlobalStateItemsList(GlobalState.Progress.INSTANCE);
                    }
                } else if (result instanceof Result.Error) {
                    if (z3) {
                        ((StakingProgrammesView) this.getViewState()).onLoadMoreError();
                    } else if (((Result.Error) result).getError().isNoConnectionStatus()) {
                        this.renderGlobalStateItemsList(GlobalState.NoInternet.INSTANCE);
                    } else {
                        this.renderGlobalStateItemsList(GlobalState.Unexpected.INSTANCE);
                    }
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.staking.programmes.StakingProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$2
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
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n….invoke(error)\n        })");
        this.stakingProgrammesLoadingDisposable = subscribe;
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public final void onStakingProgrammeClick(StakingProgrammeItem stakingProgrammeItem) {
        Object obj;
        StakingDetailsItem mapToUi;
        boolean z;
        Intrinsics.checkNotNullParameter(stakingProgrammeItem, "stakingProgrammeItem");
        Iterator<T> it = this.stakingProgrammes.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (((StakingMetadata) obj).getId() == stakingProgrammeItem.getId()) {
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
        StakingMetadata stakingMetadata = (StakingMetadata) obj;
        if (stakingMetadata == null || (mapToUi = StakingDetailedMetadataUiMappingKt.mapToUi(stakingMetadata)) == null) {
            return;
        }
        AccountLevel accountLevel = this.accountLevel;
        if (stakingProgrammeItem.isParticipated()) {
            ((StakingProgrammesView) getViewState()).openStakingDetailsScreen(mapToUi);
        } else if (accountLevel == null) {
            loadAccountLevelAndOpenStaking(mapToUi);
        } else {
            openStakingCheckingAccountLevel(mapToUi, accountLevel);
        }
    }

    public final void showSelectStakingOrderTypeDialog() {
        ((StakingProgrammesView) getViewState()).showSelectStakingOrderTypeDialog(this.cryptoPreferenceHelper.getStakingProgrammesOrderType());
    }

    public final void onStakingOrderTypeSelected(StakingOrderType type) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.cryptoPreferenceHelper.setStakingProgrammesOrderType(type);
        this.rxEventBus.publish(DomainRxEvents.StakingProgrammesRefresh.INSTANCE);
    }

    public final void onFilterSelected(long j) {
        StakingProgrammesFilterType mapByOrdinal = StakingProgrammesFilterType.Companion.mapByOrdinal((int) j);
        if (this.selectedFilterType != mapByOrdinal) {
            this.selectedFilterType = mapByOrdinal;
            updateFiltersItem();
            renderItemsOnFilterChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        loadStakingProgrammes$default(this, true, false, 2, null);
        listenEvents();
    }

    private final void updateFiltersItem() {
        Iterator<BaseNode> it = this.items.iterator();
        int i = 0;
        while (true) {
            if (!it.hasNext()) {
                i = -1;
                break;
            } else if (it.next() instanceof FiltersListItem) {
                break;
            } else {
                i++;
            }
        }
        if (i == -1) {
            return;
        }
        List<BaseNode> list = this.items;
        FiltersListItem filtersListItem = getFiltersListItem();
        if (filtersListItem == null) {
            return;
        }
        list.set(i, filtersListItem);
    }

    private final void renderItemsOnFilterChanged() {
        List<StakingMetadata> list = this.stakingProgrammesByFilterType.get(this.selectedFilterType);
        if (list != null) {
            this.items.clear();
            this.stakingProgrammes.clear();
            this.stakingProgrammesLoadingDisposable.dispose();
            onProgrammesDataObtained$default(this, list, NumberExtKt.orZero(this.itemsCountByFilterType.get(this.selectedFilterType)), false, 4, null);
            return;
        }
        ((StakingProgrammesView) getViewState()).renderItems(this.items);
        reload(true);
    }

    private final Observable<Result<StakingProgrammes>> getProgrammesObservable(Long l) {
        int i = WhenMappings.$EnumSwitchMapping$0[this.stakingTabType.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return this.stakingInteractor.getStakingOwnProgrammesList(this.cryptoPreferenceHelper.getStakingProgrammesOrderType(), l, this.selectedFilterType);
            }
            throw new NoWhenBranchMatchedException();
        }
        return this.stakingInteractor.getStakingProgrammesList(this.cryptoPreferenceHelper.getStakingProgrammesOrderType(), l);
    }

    static /* synthetic */ void onProgrammesDataObtained$default(StakingProgrammesPresenter stakingProgrammesPresenter, List list, int i, boolean z, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            z = false;
        }
        stakingProgrammesPresenter.onProgrammesDataObtained(list, i, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onProgrammesDataObtained(List<StakingMetadata> list, int i, boolean z) {
        List listOfNotNull;
        StakingTabType stakingTabType = this.stakingTabType;
        StakingTabType stakingTabType2 = StakingTabType.PARTICIPATED;
        if (stakingTabType == stakingTabType2) {
            Map<StakingProgrammesFilterType, Long> map = this.lastItemIdByFilterType;
            StakingProgrammesFilterType stakingProgrammesFilterType = this.selectedFilterType;
            StakingMetadata stakingMetadata = (StakingMetadata) CollectionsKt.lastOrNull((List<? extends Object>) list);
            map.put(stakingProgrammesFilterType, stakingMetadata != null ? Long.valueOf(stakingMetadata.getId()) : null);
            this.itemsCountByFilterType.put(this.selectedFilterType, Integer.valueOf(i));
        } else {
            StakingMetadata stakingMetadata2 = (StakingMetadata) CollectionsKt.lastOrNull((List<? extends Object>) list);
            this.lastItemId = stakingMetadata2 != null ? Long.valueOf(stakingMetadata2.getId()) : null;
        }
        if (list.isEmpty()) {
            if (!z) {
                renderGlobalStateItemsList(GlobalState.Empty.Staking.INSTANCE);
            }
            ((StakingProgrammesView) getViewState()).onLoadMoreComplete();
            return;
        }
        if (this.items.isEmpty()) {
            List<BaseNode> list2 = this.items;
            listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull((Object[]) new NoChildNode[]{new HeaderItemWithRightButton(this.resourceManager.getString(C3558R.string.staking_programmes_count, Integer.valueOf(i)), C3558R.C3560drawable.fork_ic_sort_28), getFiltersListItem()});
            list2.addAll(listOfNotNull);
        }
        this.stakingProgrammes.addAll(list);
        if (this.stakingTabType == stakingTabType2) {
            Map<StakingProgrammesFilterType, List<StakingMetadata>> map2 = this.stakingProgrammesByFilterType;
            StakingProgrammesFilterType stakingProgrammesFilterType2 = this.selectedFilterType;
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(this.stakingProgrammes);
            map2.put(stakingProgrammesFilterType2, arrayList);
        }
        this.items.addAll(StakingMetadataUiMappingKt.mapToUi(list));
        ((StakingProgrammesView) getViewState()).renderItems(this.items);
    }

    private final FiltersListItem getFiltersListItem() {
        List mutableList;
        if (WhenMappings.$EnumSwitchMapping$0[this.stakingTabType.ordinal()] == 2) {
            StakingProgrammesFilterType[] values = StakingProgrammesFilterType.values();
            ArrayList arrayList = new ArrayList(values.length);
            int length = values.length;
            for (int i = 0; i < length; i++) {
                StakingProgrammesFilterType stakingProgrammesFilterType = values[i];
                arrayList.add(new FilterItem(stakingProgrammesFilterType.ordinal(), this.resourceManager.getString(stakingProgrammesFilterType.getTitleResId()), this.selectedFilterType == stakingProgrammesFilterType));
            }
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
            return new FiltersListItem(mutableList);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void renderGlobalStateItemsList(GlobalState globalState) {
        List listOfNotNull;
        List<BaseNode> mutableList;
        listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull((Object[]) new NoChildNode[]{new HeaderItemWithRightButton(this.resourceManager.getString(C3558R.string.staking_list_header), C3558R.C3560drawable.fork_ic_sort_28), getFiltersListItem(), new GlobalStateItem(globalState)});
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) listOfNotNull);
        ((StakingProgrammesView) getViewState()).renderItems(mutableList);
    }

    private final void loadAccountLevelAndOpenStaking(final StakingDetailsItem stakingDetailsItem) {
        Observable scheduleIO = SchedulersExtKt.scheduleIO(AccountLevelInteractor.getAccountLevelRemote$default(this.accountLevelInteractor, 0L, 1, null));
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = scheduleIO.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends AccountLevel>, Unit>() { // from class: com.iMe.ui.wallet.staking.programmes.StakingProgrammesPresenter$loadAccountLevelAndOpenStaking$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends AccountLevel> result) {
                m1593invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1593invoke(Result<? extends AccountLevel> it) {
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends AccountLevel> result = it;
                if (result instanceof Result.Success) {
                    StakingProgrammesPresenter.this.openStakingCheckingAccountLevel(stakingDetailsItem, (AccountLevel) ((Result.Success) result).getData());
                } else if (result instanceof Result.Error) {
                    resourceManager = StakingProgrammesPresenter.this.resourceManager;
                    ((StakingProgrammesView) StakingProgrammesPresenter.this.getViewState()).showErrorToast((Result.Error) result, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.staking.programmes.StakingProgrammesPresenter$loadAccountLevelAndOpenStaking$$inlined$subscribeWithErrorHandle$default$2
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
                BaseView baseView2 = BaseView.this;
                if (baseView2 != null) {
                    String message = error.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView2.showToast(message);
                }
                Intrinsics.checkNotNullExpressionValue(error, "error");
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n….invoke(error)\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void openStakingCheckingAccountLevel(StakingDetailsItem stakingDetailsItem, AccountLevel accountLevel) {
        if (stakingDetailsItem.getMinimalRank().isReached(accountLevel)) {
            ((StakingProgrammesView) getViewState()).openDepositScreen(stakingDetailsItem);
        } else {
            ((StakingProgrammesView) getViewState()).showLevelRequiredDialog(stakingDetailsItem.getMinimalRank(), TokenDetailed.Companion.getLIME(stakingDetailsItem.getTokenItem().getNetworkId()));
        }
    }

    private final void listenEvents() {
        RxEventBus rxEventBus = this.rxEventBus;
        Observable observeOn = rxEventBus.getPublisher().ofType(DomainRxEvents.StakingProgrammesRefresh.class).observeOn(rxEventBus.getSchedulersProvider().mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n              …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<DomainRxEvents.StakingProgrammesRefresh, Unit>() { // from class: com.iMe.ui.wallet.staking.programmes.StakingProgrammesPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DomainRxEvents.StakingProgrammesRefresh stakingProgrammesRefresh) {
                m1592invoke(stakingProgrammesRefresh);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1592invoke(DomainRxEvents.StakingProgrammesRefresh it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                StakingProgrammesPresenter.reload$default(StakingProgrammesPresenter.this, false, 1, null);
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.staking.programmes.StakingProgrammesPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2
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
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n….invoke(error)\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }
}
