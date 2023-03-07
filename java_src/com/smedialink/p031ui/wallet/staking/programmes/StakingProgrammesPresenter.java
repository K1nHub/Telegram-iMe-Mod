package com.smedialink.p031ui.wallet.staking.programmes;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.i_staking.StakingInteractor;
import com.smedialink.mapper.staking.StakingDetailedMetadataUiMappingKt;
import com.smedialink.mapper.staking.StakingMetadataUiMappingKt;
import com.smedialink.model.common.FilterItem;
import com.smedialink.model.common.FiltersListItem;
import com.smedialink.model.common.GlobalStateItem;
import com.smedialink.model.staking.StakingDetailsItem;
import com.smedialink.model.staking.StakingProgrammeItem;
import com.smedialink.model.state.GlobalState;
import com.smedialink.model.wallet.home.HeaderItemWithRightButton;
import com.smedialink.p031ui.base.mvp.base.BasePresenter;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.data.utils.extentions.NumberExtKt;
import com.smedialink.storage.domain.interactor.crypto.level.AccountLevelInteractor;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.level.AccountLevel;
import com.smedialink.storage.domain.model.staking.StakingMetadata;
import com.smedialink.storage.domain.model.staking.StakingProgrammes;
import com.smedialink.storage.domain.model.staking.StakingProgrammesFilterType;
import com.smedialink.storage.domain.model.staking.StakingTabType;
import com.smedialink.storage.domain.model.wallet.staking.StakingOrderType;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import com.smedialink.storage.domain.utils.p030rx.RxEventBus;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import com.smedialink.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.disposables.Disposables;
import io.reactivex.functions.Consumer;
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
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3158R;
import timber.log.Timber;
/* compiled from: StakingProgrammesPresenter.kt */
@InjectViewState
/* renamed from: com.smedialink.ui.wallet.staking.programmes.StakingProgrammesPresenter */
/* loaded from: classes3.dex */
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
    /* renamed from: com.smedialink.ui.wallet.staking.programmes.StakingProgrammesPresenter$WhenMappings */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[StakingTabType.values().length];
            iArr[StakingTabType.ALL.ordinal()] = 1;
            iArr[StakingTabType.PARTICIPATED.ordinal()] = 2;
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
        Observable<Result<StakingProgrammes>> observeOn = getProgrammesObservable(l).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "getProgrammesObservable(…(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.staking.programmes.StakingProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                RxEventBus rxEventBus;
                StakingTabType stakingTabType;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
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
        }, new Consumer() { // from class: com.smedialink.ui.wallet.staking.programmes.StakingProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$2
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
        this.stakingProgrammesLoadingDisposable = subscribe;
        Unit unit = Unit.INSTANCE;
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public final void onStakingProgrammeClick(StakingProgrammeItem stakingProgrammeItem) {
        Object obj;
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
        StakingDetailsItem mapToUi = stakingMetadata != null ? StakingDetailedMetadataUiMappingKt.mapToUi(stakingMetadata) : null;
        if (mapToUi == null) {
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

    public final void onProgrammesDataObtained(List<StakingMetadata> list, int i, boolean z) {
        List listOfNotNull;
        StakingTabType stakingTabType = this.stakingTabType;
        StakingTabType stakingTabType2 = StakingTabType.PARTICIPATED;
        if (stakingTabType == stakingTabType2) {
            Map<StakingProgrammesFilterType, Long> map = this.lastItemIdByFilterType;
            StakingProgrammesFilterType stakingProgrammesFilterType = this.selectedFilterType;
            StakingMetadata stakingMetadata = (StakingMetadata) CollectionsKt.lastOrNull(list);
            map.put(stakingProgrammesFilterType, stakingMetadata != null ? Long.valueOf(stakingMetadata.getId()) : null);
            this.itemsCountByFilterType.put(this.selectedFilterType, Integer.valueOf(i));
        } else {
            StakingMetadata stakingMetadata2 = (StakingMetadata) CollectionsKt.lastOrNull(list);
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
            listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull(new HeaderItemWithRightButton(this.resourceManager.getString(C3158R.string.staking_programmes_count, Integer.valueOf(i)), C3158R.C3160drawable.fork_ic_sort_28), getFiltersListItem());
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

    public final void renderGlobalStateItemsList(GlobalState globalState) {
        List listOfNotNull;
        List<BaseNode> mutableList;
        listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull(new HeaderItemWithRightButton(this.resourceManager.getString(C3158R.string.staking_list_header), C3158R.C3160drawable.fork_ic_sort_28), getFiltersListItem(), new GlobalStateItem(globalState));
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) listOfNotNull);
        ((StakingProgrammesView) getViewState()).renderItems(mutableList);
    }

    private final void loadAccountLevelAndOpenStaking(final StakingDetailsItem stakingDetailsItem) {
        Observable observeOn = AccountLevelInteractor.getAccountLevelRemote$default(this.accountLevelInteractor, 0L, 1, null).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "accountLevelInteractor\n …(schedulersProvider.ui())");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.staking.programmes.StakingProgrammesPresenter$loadAccountLevelAndOpenStaking$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
                if (result instanceof Result.Success) {
                    StakingProgrammesPresenter.this.openStakingCheckingAccountLevel(stakingDetailsItem, (AccountLevel) ((Result.Success) result).getData());
                } else if (result instanceof Result.Error) {
                    ErrorModel error = ((Result.Error) result).getError();
                    resourceManager = StakingProgrammesPresenter.this.resourceManager;
                    ((StakingProgrammesView) StakingProgrammesPresenter.this.getViewState()).showToast(error.getMessage(resourceManager));
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.wallet.staking.programmes.StakingProgrammesPresenter$loadAccountLevelAndOpenStaking$$inlined$subscribeWithErrorHandle$default$2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Throwable th) {
                Timber.m4e(th);
                BaseView baseView2 = BaseView.this;
                if (baseView2 == null) {
                    return;
                }
                String message = th.getMessage();
                if (message == null) {
                    message = "";
                }
                baseView2.showToast(message);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public final void openStakingCheckingAccountLevel(StakingDetailsItem stakingDetailsItem, AccountLevel accountLevel) {
        if (stakingDetailsItem.getMinimalRank().isReached(accountLevel)) {
            ((StakingProgrammesView) getViewState()).openDepositScreen(stakingDetailsItem);
        } else {
            ((StakingProgrammesView) getViewState()).showLevelRequiredDialog(stakingDetailsItem.getMinimalRank());
        }
    }

    private final void listenEvents() {
        RxEventBus rxEventBus = this.rxEventBus;
        Observable observeOn = rxEventBus.getPublisher().ofType(DomainRxEvents.StakingProgrammesRefresh.class).observeOn(rxEventBus.getSchedulersProvider().mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n              …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.staking.programmes.StakingProgrammesPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                DomainRxEvents.StakingProgrammesRefresh stakingProgrammesRefresh = (DomainRxEvents.StakingProgrammesRefresh) it;
                StakingProgrammesPresenter.reload$default(StakingProgrammesPresenter.this, false, 1, null);
            }
        }, new Consumer() { // from class: com.smedialink.ui.wallet.staking.programmes.StakingProgrammesPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2
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
}
