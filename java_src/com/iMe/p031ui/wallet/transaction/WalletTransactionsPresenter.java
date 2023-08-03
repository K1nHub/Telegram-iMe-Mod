package com.iMe.p031ui.wallet.transaction;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.common.AppRxEvents;
import com.iMe.i_staking.StakingInteractor;
import com.iMe.mapper.staking.StackingOperationUiMappingKt;
import com.iMe.mapper.transaction.TransactionUiMappingKt;
import com.iMe.model.common.GlobalStateItem;
import com.iMe.model.state.GlobalState;
import com.iMe.model.wallet.home.HeaderItem;
import com.iMe.model.wallet.transaction.StakingOperationItem;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.p031ui.wallet.transaction.WalletTransactionsFragment;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.model.error.ErrorModel;
import com.iMe.storage.data.utils.crypto.NetworksHelper;
import com.iMe.storage.domain.interactor.wallet.WalletInteractor;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.model.staking.StakingOperation;
import com.iMe.storage.domain.model.staking.StakingOperationsPaged;
import com.iMe.storage.domain.model.wallet.Hint;
import com.iMe.storage.domain.model.wallet.token.Token;
import com.iMe.storage.domain.model.wallet.transaction.Transaction;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.storage.HintsPreferenceHelper;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.iMe.storage.domain.utils.p030rx.event.RxEvent;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.StringExtKt;
import com.iMe.utils.extentions.p032rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import timber.log.Timber;
/* compiled from: WalletTransactionsPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.transaction.WalletTransactionsPresenter */
/* loaded from: classes4.dex */
public final class WalletTransactionsPresenter extends BasePresenter<WalletTransactionsView> {
    private final CryptoAccessManager cryptoAccessManager;
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final HintsPreferenceHelper hintsPreferenceHelper;
    private final ResourceManager resourceManager;
    private final RxEventBus rxEventBus;
    private final SchedulersProvider schedulersProvider;
    private final WalletTransactionsFragment.ScreenType screenType;
    private Network selectedNetwork;
    private final StakingInteractor stakingInteractor;
    private final List<StakingOperation> stakingOperations;
    private String stakingOperationsCursor;
    private final Token token;
    private final List<Transaction> transactions;
    private final WalletInteractor walletInteractor;

    public WalletTransactionsPresenter(Token token, WalletTransactionsFragment.ScreenType screenType, CryptoAccessManager cryptoAccessManager, CryptoPreferenceHelper cryptoPreferenceHelper, HintsPreferenceHelper hintsPreferenceHelper, ResourceManager resourceManager, RxEventBus rxEventBus, SchedulersProvider schedulersProvider, StakingInteractor stakingInteractor, WalletInteractor walletInteractor) {
        Intrinsics.checkNotNullParameter(screenType, "screenType");
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(hintsPreferenceHelper, "hintsPreferenceHelper");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(rxEventBus, "rxEventBus");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(stakingInteractor, "stakingInteractor");
        Intrinsics.checkNotNullParameter(walletInteractor, "walletInteractor");
        this.token = token;
        this.screenType = screenType;
        this.cryptoAccessManager = cryptoAccessManager;
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.hintsPreferenceHelper = hintsPreferenceHelper;
        this.resourceManager = resourceManager;
        this.rxEventBus = rxEventBus;
        this.schedulersProvider = schedulersProvider;
        this.stakingInteractor = stakingInteractor;
        this.walletInteractor = walletInteractor;
        this.transactions = new ArrayList();
        this.stakingOperations = new ArrayList();
        this.selectedNetwork = getInitialSelectedNetwork();
    }

    public final void startChooseNetworkDialog() {
        ((WalletTransactionsView) getViewState()).showChooseNetworkDialog(this.selectedNetwork, NetworksHelper.INSTANCE.getNetworksByBlockchains(this.cryptoAccessManager.getLoggedIndWalletsBlockchains()), new Function1<Network, Unit>() { // from class: com.iMe.ui.wallet.transaction.WalletTransactionsPresenter$startChooseNetworkDialog$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Network network) {
                invoke2(network);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Network newNetwork) {
                Network network;
                Intrinsics.checkNotNullParameter(newNetwork, "newNetwork");
                WalletTransactionsPresenter.this.selectedNetwork = newNetwork;
                network = WalletTransactionsPresenter.this.selectedNetwork;
                ((WalletTransactionsView) WalletTransactionsPresenter.this.getViewState()).setupNetwork(network);
                WalletTransactionsPresenter.load$default(WalletTransactionsPresenter.this, true, false, null, 6, null);
            }
        });
    }

    public static /* synthetic */ void load$default(WalletTransactionsPresenter walletTransactionsPresenter, boolean z, boolean z2, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            z2 = false;
        }
        if ((i & 4) != 0) {
            str = null;
        }
        walletTransactionsPresenter.load(z, z2, str);
    }

    public final void load(boolean z, boolean z2, String str) {
        if (z) {
            this.transactions.clear();
            this.stakingOperations.clear();
            this.stakingOperationsCursor = null;
            ((WalletTransactionsView) getViewState()).resetLoadMore();
        }
        if (this.screenType.isStaking()) {
            loadStakingOperations(z, z2);
        } else {
            loadTransactions(z || z2, str);
        }
    }

    public final void showChangeNetworkHintIfNeeded() {
        if (Intrinsics.areEqual(this.screenType, WalletTransactionsFragment.ScreenType.Fullscreen.INSTANCE)) {
            HintsPreferenceHelper hintsPreferenceHelper = this.hintsPreferenceHelper;
            Hint.ChangeNetwork.TransactionsScreen transactionsScreen = Hint.ChangeNetwork.TransactionsScreen.INSTANCE;
            if (hintsPreferenceHelper.shouldShowHint(transactionsScreen)) {
                ((WalletTransactionsView) getViewState()).showChangeNetworkHint();
                this.hintsPreferenceHelper.onHintShowed(transactionsScreen);
            }
        }
    }

    public final void onStakingOperationClick(StakingOperationItem item) {
        Network network;
        Intrinsics.checkNotNullParameter(item, "item");
        WalletTransactionsView walletTransactionsView = (WalletTransactionsView) getViewState();
        WalletTransactionsFragment.ScreenType screenType = this.screenType;
        if (screenType instanceof WalletTransactionsFragment.ScreenType.StakingDetailsTab) {
            network = NetworksHelper.getNetworkById(((WalletTransactionsFragment.ScreenType.StakingDetailsTab) screenType).getStakingDetails().getTokenItem().getNetworkId());
        } else if (!(screenType instanceof WalletTransactionsFragment.ScreenType.StakingOperationsTab)) {
            return;
        } else {
            network = this.selectedNetwork;
        }
        walletTransactionsView.openStakingOperationDetails(item, network);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        ((WalletTransactionsView) getViewState()).setupNetwork(this.selectedNetwork);
        load$default(this, false, true, null, 5, null);
        listenEvents();
    }

    private final Network getInitialSelectedNetwork() {
        if ((this.screenType instanceof WalletTransactionsFragment.ScreenType.StakingOperationsTab) && !this.cryptoPreferenceHelper.getNetwork().isEVM()) {
            return (Network) CollectionsKt.first((List<? extends Object>) NetworksHelper.INSTANCE.getEVMNetworks());
        }
        return this.cryptoPreferenceHelper.getNetwork();
    }

    private final void loadTransactions(final boolean z, String str) {
        final boolean z2 = str != null;
        loadInternal(z, z2, WalletInteractor.getWalletTransactions$default(this.walletInteractor, z, str, this.token, 0, this.selectedNetwork.getId(), 8, null), new Function1<List<? extends Transaction>, Unit>() { // from class: com.iMe.ui.wallet.transaction.WalletTransactionsPresenter$loadTransactions$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends Transaction> list) {
                invoke2(list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(List<? extends Transaction> data) {
                List filterTransactionsByTypeIfNeeded;
                List<BaseNode> mapTransactionsToGroups;
                Intrinsics.checkNotNullParameter(data, "data");
                filterTransactionsByTypeIfNeeded = WalletTransactionsPresenter.this.filterTransactionsByTypeIfNeeded(data);
                if (!filterTransactionsByTypeIfNeeded.isEmpty()) {
                    mapTransactionsToGroups = WalletTransactionsPresenter.this.mapTransactionsToGroups(filterTransactionsByTypeIfNeeded);
                    if (z2) {
                        ((WalletTransactionsView) WalletTransactionsPresenter.this.getViewState()).onLoadMoreItems(mapTransactionsToGroups);
                        return;
                    } else if (z) {
                        ((WalletTransactionsView) WalletTransactionsPresenter.this.getViewState()).renderInitialItems(mapTransactionsToGroups);
                        return;
                    } else {
                        ((WalletTransactionsView) WalletTransactionsPresenter.this.getViewState()).renderItems(mapTransactionsToGroups);
                        return;
                    }
                }
                if (!z2) {
                    WalletTransactionsPresenter.this.renderGlobalState(GlobalState.Empty.Common.INSTANCE);
                }
                ((WalletTransactionsView) WalletTransactionsPresenter.this.getViewState()).onLoadMoreComplete();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void renderGlobalState(GlobalState globalState) {
        List<BaseNode> mutableListOf;
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(new GlobalStateItem(globalState));
        ((WalletTransactionsView) getViewState()).renderItems(mutableListOf);
    }

    private final void loadStakingOperations(final boolean z, boolean z2) {
        Observable stakingOperations$default;
        final boolean z3 = (z || z2) ? false : true;
        if (z3 && this.stakingOperationsCursor == null) {
            ((WalletTransactionsView) getViewState()).onLoadMoreComplete();
            return;
        }
        WalletTransactionsFragment.ScreenType screenType = this.screenType;
        if (screenType instanceof WalletTransactionsFragment.ScreenType.StakingDetailsTab) {
            stakingOperations$default = StakingInteractor.getStakingOperations$default(this.stakingInteractor, Long.valueOf(((WalletTransactionsFragment.ScreenType.StakingDetailsTab) screenType).getStakingDetails().getId()), ((WalletTransactionsFragment.ScreenType.StakingDetailsTab) this.screenType).getOperationsType(), null, this.stakingOperationsCursor, 4, null);
        } else if (!(screenType instanceof WalletTransactionsFragment.ScreenType.StakingOperationsTab)) {
            return;
        } else {
            stakingOperations$default = StakingInteractor.getStakingOperations$default(this.stakingInteractor, null, ((WalletTransactionsFragment.ScreenType.StakingOperationsTab) screenType).getOperationsType(), this.selectedNetwork.getId(), this.stakingOperationsCursor, 1, null);
        }
        loadInternal(z, z3, stakingOperations$default, new Function1<StakingOperationsPaged, Unit>() { // from class: com.iMe.ui.wallet.transaction.WalletTransactionsPresenter$loadStakingOperations$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(StakingOperationsPaged stakingOperationsPaged) {
                invoke2(stakingOperationsPaged);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(StakingOperationsPaged data) {
                List<BaseNode> mapStakingOperationsToGroups;
                Intrinsics.checkNotNullParameter(data, "data");
                if (!data.getOperations().isEmpty()) {
                    mapStakingOperationsToGroups = WalletTransactionsPresenter.this.mapStakingOperationsToGroups(data.getOperations());
                    WalletTransactionsPresenter.this.stakingOperationsCursor = data.getNextCursor();
                    if (z3) {
                        ((WalletTransactionsView) WalletTransactionsPresenter.this.getViewState()).onLoadMoreItems(mapStakingOperationsToGroups);
                    } else if (z) {
                        ((WalletTransactionsView) WalletTransactionsPresenter.this.getViewState()).renderItems(mapStakingOperationsToGroups);
                    } else {
                        ((WalletTransactionsView) WalletTransactionsPresenter.this.getViewState()).renderInitialItems(mapStakingOperationsToGroups);
                    }
                } else if (!z3) {
                    WalletTransactionsPresenter.this.renderGlobalState(GlobalState.Empty.Common.INSTANCE);
                }
                if (data.getNextCursor() == null) {
                    ((WalletTransactionsView) WalletTransactionsPresenter.this.getViewState()).onLoadMoreComplete();
                }
            }
        });
    }

    private final <T> void loadInternal(final boolean z, final boolean z2, Observable<Result<T>> observable, final Function1<? super T, Unit> function1) {
        Observable<Result<T>> doFinally = observable.distinctUntilChanged().observeOn(this.schedulersProvider.mo716ui()).doFinally(new Action() { // from class: com.iMe.ui.wallet.transaction.WalletTransactionsPresenter$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Action
            public final void run() {
                WalletTransactionsPresenter.loadInternal$lambda$0(WalletTransactionsPresenter.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "observable\n             …e.showRefreshing(false) }");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = doFinally.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends T>, Unit>() { // from class: com.iMe.ui.wallet.transaction.WalletTransactionsPresenter$loadInternal$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Object obj) {
                invoke2(obj);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Result<? extends T> it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends T> result = it;
                if (result instanceof Result.Success) {
                    Function1.this.invoke(((Result.Success) result).getData());
                } else if (result instanceof Result.Loading) {
                    if (z2) {
                        return;
                    }
                    this.onLoading(z);
                } else if (result instanceof Result.Error) {
                    this.onError(((Result.Error) result).getError(), z2);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.transaction.WalletTransactionsPresenter$loadInternal$$inlined$subscribeWithErrorHandle$default$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable th) {
                Timber.m6e(th);
                BaseView baseView2 = BaseView.this;
                if (baseView2 != null) {
                    String message = th.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView2.showToast(message);
                }
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadInternal$lambda$0(WalletTransactionsPresenter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ((WalletTransactionsView) this$0.getViewState()).showRefreshing(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onLoading(boolean z) {
        if (z) {
            ((WalletTransactionsView) getViewState()).showRefreshing(true);
        } else {
            renderGlobalState(GlobalState.Progress.INSTANCE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onError(ErrorModel errorModel, boolean z) {
        if (z) {
            ((WalletTransactionsView) getViewState()).onLoadMoreError();
        } else {
            renderGlobalState(errorModel.getStatus() == ApiErrorHandler.ErrorStatus.NO_CONNECTION ? GlobalState.NoInternet.INSTANCE : GlobalState.Unexpected.INSTANCE);
        }
        ((WalletTransactionsView) getViewState()).showToast(errorModel.getMessage(this.resourceManager));
    }

    private final void listenEvents() {
        RxEventBus rxEventBus = this.rxEventBus;
        Observable observeOn = rxEventBus.getPublisher().ofType(RxEvent.class).observeOn(rxEventBus.getSchedulersProvider().mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n              …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<RxEvent, Unit>() { // from class: com.iMe.ui.wallet.transaction.WalletTransactionsPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(RxEvent rxEvent) {
                m1590invoke(rxEvent);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1590invoke(RxEvent it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                RxEvent rxEvent = it;
                if (Intrinsics.areEqual(rxEvent, AppRxEvents.UpdateWalletScreen.INSTANCE) ? true : Intrinsics.areEqual(rxEvent, AppRxEvents.UpdateTransactionScreen.INSTANCE) ? true : Intrinsics.areEqual(rxEvent, DomainRxEvents.WalletReset.INSTANCE) ? true : Intrinsics.areEqual(rxEvent, DomainRxEvents.WalletCreated.INSTANCE) ? true : Intrinsics.areEqual(rxEvent, DomainRxEvents.WalletRestored.INSTANCE) ? true : Intrinsics.areEqual(rxEvent, DomainRxEvents.RefreshTransactions.INSTANCE)) {
                    WalletTransactionsPresenter.load$default(WalletTransactionsPresenter.this, true, false, null, 6, null);
                } else if (rxEvent instanceof DomainRxEvents.StakingOperationsReload) {
                    WalletTransactionsPresenter.this.selectedNetwork = NetworksHelper.getNetworkById(((DomainRxEvents.StakingOperationsReload) rxEvent).getNetworkId());
                    WalletTransactionsPresenter.load$default(WalletTransactionsPresenter.this, true, false, null, 6, null);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.transaction.WalletTransactionsPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable th) {
                Timber.m6e(th);
                BaseView baseView = BaseView.this;
                if (baseView != null) {
                    String message = th.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView.showToast(message);
                }
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final List<Transaction> filterTransactionsByTypeIfNeeded(List<? extends Transaction> list) {
        if (this.screenType instanceof WalletTransactionsFragment.ScreenType.TokenDetailsTab) {
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (((WalletTransactionsFragment.ScreenType.TokenDetailsTab) this.screenType).getTransactionsGroup().checkTransaction((Transaction) obj)) {
                    arrayList.add(obj);
                }
            }
            return arrayList;
        }
        return list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<BaseNode> mapTransactionsToGroups(List<? extends Transaction> list) {
        List distinct;
        this.transactions.addAll(list);
        ArrayList arrayList = new ArrayList();
        distinct = CollectionsKt___CollectionsKt.distinct(this.transactions);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : distinct) {
            String formatISODate$default = StringExtKt.formatISODate$default(((Transaction) obj).getCreatedAt(), null, 1, null);
            Object obj2 = linkedHashMap.get(formatISODate$default);
            if (obj2 == null) {
                obj2 = new ArrayList();
                linkedHashMap.put(formatISODate$default, obj2);
            }
            ((List) obj2).add(obj);
        }
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            arrayList.add(new HeaderItem((String) entry.getKey()));
            for (Transaction transaction : (List) entry.getValue()) {
                arrayList.add(TransactionUiMappingKt.mapToUI(transaction));
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<BaseNode> mapStakingOperationsToGroups(List<StakingOperation> list) {
        List distinct;
        this.stakingOperations.addAll(list);
        ArrayList arrayList = new ArrayList();
        boolean z = this.screenType instanceof WalletTransactionsFragment.ScreenType.StakingOperationsTab;
        distinct = CollectionsKt___CollectionsKt.distinct(this.stakingOperations);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : distinct) {
            String formatISODate$default = StringExtKt.formatISODate$default(((StakingOperation) obj).getCreatedAt(), null, 1, null);
            Object obj2 = linkedHashMap.get(formatISODate$default);
            if (obj2 == null) {
                obj2 = new ArrayList();
                linkedHashMap.put(formatISODate$default, obj2);
            }
            ((List) obj2).add(obj);
        }
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            arrayList.add(new HeaderItem((String) entry.getKey()));
            for (StakingOperation stakingOperation : (List) entry.getValue()) {
                arrayList.add(StackingOperationUiMappingKt.mapToUi(stakingOperation, z));
            }
        }
        return arrayList;
    }
}
