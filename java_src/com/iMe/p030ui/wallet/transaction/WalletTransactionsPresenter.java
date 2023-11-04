package com.iMe.p030ui.wallet.transaction;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.common.AppRxEvents;
import com.iMe.i_staking.StakingInteractor;
import com.iMe.mapper.cryptobox.CryptoBoxActionUiMappingKt;
import com.iMe.mapper.staking.StackingOperationUiMappingKt;
import com.iMe.mapper.transaction.TransactionUiMappingKt;
import com.iMe.mapper.wallet.NetworkUiMappingKt;
import com.iMe.model.common.GlobalStateItem;
import com.iMe.model.state.GlobalState;
import com.iMe.model.wallet.crypto.NetworkItem;
import com.iMe.model.wallet.home.HeaderItem;
import com.iMe.model.wallet.transaction.CryptoBoxActionItem;
import com.iMe.model.wallet.transaction.StakingOperationItem;
import com.iMe.model.wallet.transaction.WalletTransactionsScreenType;
import com.iMe.p030ui.base.mvp.base.BasePresenter;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.network.model.error.ErrorModel;
import com.iMe.storage.data.utils.crypto.NetworksHelper;
import com.iMe.storage.domain.interactor.crypto.cryptobox.CryptoBoxInteractor;
import com.iMe.storage.domain.interactor.wallet.WalletInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxAction;
import com.iMe.storage.domain.model.staking.StakingOperation;
import com.iMe.storage.domain.model.staking.StakingOperationsPaged;
import com.iMe.storage.domain.model.wallet.Hint;
import com.iMe.storage.domain.model.wallet.token.Token;
import com.iMe.storage.domain.model.wallet.transaction.Transaction;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.storage.HintsPreferenceHelper;
import com.iMe.storage.domain.utils.p029rx.RxEventBus;
import com.iMe.storage.domain.utils.p029rx.SchedulersProvider;
import com.iMe.storage.domain.utils.p029rx.event.DomainRxEvents;
import com.iMe.storage.domain.utils.p029rx.event.RxEvent;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.StringExtKt;
import com.iMe.utils.extentions.p031rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import java.util.ArrayList;
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
import timber.log.Timber;
/* compiled from: WalletTransactionsPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.transaction.WalletTransactionsPresenter */
/* loaded from: classes4.dex */
public final class WalletTransactionsPresenter extends BasePresenter<WalletTransactionsView> {
    private final List<NetworkItem> availableNetworks;
    private final List<CryptoBoxAction> cryptoBoxActions;
    private final CryptoBoxInteractor cryptoBoxInteractor;
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final HintsPreferenceHelper hintsPreferenceHelper;
    private final ResourceManager resourceManager;
    private final RxEventBus rxEventBus;
    private final SchedulersProvider schedulersProvider;
    private final WalletTransactionsScreenType screenType;
    private NetworkItem.Crypto selectedNetworkItem;
    private final StakingInteractor stakingInteractor;
    private final List<StakingOperation> stakingOperations;
    private String stakingOperationsCursor;
    private final Token token;
    private final List<Transaction> transactions;
    private final WalletInteractor walletInteractor;

    public WalletTransactionsPresenter(Token token, WalletTransactionsScreenType screenType, CryptoBoxInteractor cryptoBoxInteractor, CryptoPreferenceHelper cryptoPreferenceHelper, HintsPreferenceHelper hintsPreferenceHelper, ResourceManager resourceManager, RxEventBus rxEventBus, SchedulersProvider schedulersProvider, StakingInteractor stakingInteractor, WalletInteractor walletInteractor) {
        Intrinsics.checkNotNullParameter(screenType, "screenType");
        Intrinsics.checkNotNullParameter(cryptoBoxInteractor, "cryptoBoxInteractor");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(hintsPreferenceHelper, "hintsPreferenceHelper");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(rxEventBus, "rxEventBus");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(stakingInteractor, "stakingInteractor");
        Intrinsics.checkNotNullParameter(walletInteractor, "walletInteractor");
        this.token = token;
        this.screenType = screenType;
        this.cryptoBoxInteractor = cryptoBoxInteractor;
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.hintsPreferenceHelper = hintsPreferenceHelper;
        this.resourceManager = resourceManager;
        this.rxEventBus = rxEventBus;
        this.schedulersProvider = schedulersProvider;
        this.stakingInteractor = stakingInteractor;
        this.walletInteractor = walletInteractor;
        this.transactions = new ArrayList();
        this.cryptoBoxActions = new ArrayList();
        this.stakingOperations = new ArrayList();
        this.availableNetworks = NetworkUiMappingKt.mapToUI(NetworksHelper.INSTANCE.getLoggedInNetworks());
        this.selectedNetworkItem = getInitialSelectedNetwork();
    }

    public final void startChooseNetworkDialog() {
        ((WalletTransactionsView) getViewState()).showChooseNetworkDialog(this.selectedNetworkItem, this.availableNetworks);
    }

    public final void onNetworkSelected(NetworkItem.Crypto crypto) {
        if (crypto == null) {
            return;
        }
        this.selectedNetworkItem = crypto;
        ((WalletTransactionsView) getViewState()).setupNetwork(this.selectedNetworkItem);
        load$default(this, true, false, null, 6, null);
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
            this.cryptoBoxActions.clear();
            this.stakingOperationsCursor = null;
            ((WalletTransactionsView) getViewState()).resetLoadMore();
        }
        WalletTransactionsScreenType walletTransactionsScreenType = this.screenType;
        if (walletTransactionsScreenType instanceof WalletTransactionsScreenType.Fullscreen ? true : walletTransactionsScreenType instanceof WalletTransactionsScreenType.TokenDetailsTab) {
            if (!z && !z2) {
                r2 = false;
            }
            loadTransactions(r2, str);
            return;
        }
        if (walletTransactionsScreenType instanceof WalletTransactionsScreenType.StakingDetailsTab ? true : walletTransactionsScreenType instanceof WalletTransactionsScreenType.StakingOperationsTab) {
            loadStakingOperations(z, z2);
        } else if (walletTransactionsScreenType instanceof WalletTransactionsScreenType.CryptoBoxDetailsTab) {
            loadCryptoBoxActions(z);
        }
    }

    public final void showChangeNetworkHintIfNeeded() {
        if (Intrinsics.areEqual(this.screenType, WalletTransactionsScreenType.Fullscreen.INSTANCE)) {
            HintsPreferenceHelper hintsPreferenceHelper = this.hintsPreferenceHelper;
            Hint.ChangeNetwork.TransactionsScreen transactionsScreen = Hint.ChangeNetwork.TransactionsScreen.INSTANCE;
            if (hintsPreferenceHelper.shouldShowHint(transactionsScreen)) {
                ((WalletTransactionsView) getViewState()).showChangeNetworkHint();
                this.hintsPreferenceHelper.onHintShowed(transactionsScreen);
            }
        }
    }

    public final void onStakingOperationClick(StakingOperationItem item) {
        Network mapToDomain;
        Intrinsics.checkNotNullParameter(item, "item");
        WalletTransactionsView walletTransactionsView = (WalletTransactionsView) getViewState();
        WalletTransactionsScreenType walletTransactionsScreenType = this.screenType;
        if (walletTransactionsScreenType instanceof WalletTransactionsScreenType.StakingDetailsTab) {
            mapToDomain = NetworksHelper.getNetworkById(((WalletTransactionsScreenType.StakingDetailsTab) walletTransactionsScreenType).getStakingDetails().getTokenItem().getNetworkId());
        } else if (!(walletTransactionsScreenType instanceof WalletTransactionsScreenType.StakingOperationsTab)) {
            return;
        } else {
            mapToDomain = NetworkUiMappingKt.mapToDomain(this.selectedNetworkItem);
        }
        walletTransactionsView.openStakingOperationDetails(item, mapToDomain);
    }

    public final void onCryptoBoxActionClick(CryptoBoxActionItem item) {
        Intrinsics.checkNotNullParameter(item, "item");
        WalletTransactionsView walletTransactionsView = (WalletTransactionsView) getViewState();
        WalletTransactionsScreenType walletTransactionsScreenType = this.screenType;
        if (walletTransactionsScreenType instanceof WalletTransactionsScreenType.CryptoBoxDetailsTab) {
            walletTransactionsView.openCryptoBoxActionDetails(item, NetworksHelper.getNetworkById(((WalletTransactionsScreenType.CryptoBoxDetailsTab) walletTransactionsScreenType).getCryptoBoxInfo().getRewardToken().getNetworkId()));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        ((WalletTransactionsView) getViewState()).setupNetwork(this.selectedNetworkItem);
        load$default(this, false, true, null, 5, null);
        listenEvents();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final NetworkItem.Crypto getInitialSelectedNetwork() {
        Network networkById;
        WalletTransactionsScreenType walletTransactionsScreenType = this.screenType;
        if (walletTransactionsScreenType instanceof WalletTransactionsScreenType.CryptoBoxDetailsTab) {
            networkById = ((WalletTransactionsScreenType.CryptoBoxDetailsTab) walletTransactionsScreenType).getCryptoBoxInfo().getNetwork();
        } else {
            if (walletTransactionsScreenType instanceof WalletTransactionsScreenType.Fullscreen) {
                List<Network> loggedInNetworks = NetworksHelper.INSTANCE.getLoggedInNetworks();
                Iterator<T> it = loggedInNetworks.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    Object next = it.next();
                    if (Intrinsics.areEqual(((Network) next).getId(), this.cryptoPreferenceHelper.getNetwork().getId())) {
                        r2 = next;
                        break;
                    }
                }
                Network network = (Network) r2;
                networkById = network == null ? (Network) CollectionsKt.first((List<? extends Object>) loggedInNetworks) : network;
            } else if (walletTransactionsScreenType instanceof WalletTransactionsScreenType.StakingDetailsTab) {
                networkById = NetworksHelper.getNetworkById(((WalletTransactionsScreenType.StakingDetailsTab) walletTransactionsScreenType).getStakingDetails().getTokenItem().getNetworkId());
            } else if (walletTransactionsScreenType instanceof WalletTransactionsScreenType.StakingOperationsTab) {
                if (!this.cryptoPreferenceHelper.getNetwork().isEVM()) {
                    networkById = (Network) CollectionsKt.first((List<? extends Object>) NetworksHelper.INSTANCE.getEVMNetworks());
                } else {
                    networkById = this.cryptoPreferenceHelper.getNetwork();
                }
            } else if (walletTransactionsScreenType instanceof WalletTransactionsScreenType.TokenDetailsTab) {
                Token token = this.token;
                networkById = NetworksHelper.getNetworkById(token != null ? token.getNetworkId() : null);
            } else {
                throw new NoWhenBranchMatchedException();
            }
        }
        return NetworkUiMappingKt.mapToUI(networkById);
    }

    private final void loadTransactions(final boolean z, String str) {
        final boolean z2 = str != null;
        loadInternal(z, z2, WalletInteractor.getWalletTransactions$default(this.walletInteractor, z, str, this.token, 0, this.selectedNetworkItem.getNetworkId(), 8, null), new Function1<List<? extends Transaction>, Unit>() { // from class: com.iMe.ui.wallet.transaction.WalletTransactionsPresenter$loadTransactions$1
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

    private final void loadCryptoBoxActions(final boolean z) {
        if (this.screenType instanceof WalletTransactionsScreenType.CryptoBoxDetailsTab) {
            ((WalletTransactionsView) getViewState()).onLoadMoreComplete();
            loadInternal(z, false, this.cryptoBoxInteractor.getCryptoBoxActions(((WalletTransactionsScreenType.CryptoBoxDetailsTab) this.screenType).getCryptoBoxInfo().getId()), new Function1<List<? extends CryptoBoxAction>, Unit>() { // from class: com.iMe.ui.wallet.transaction.WalletTransactionsPresenter$loadCryptoBoxActions$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(List<? extends CryptoBoxAction> list) {
                    invoke2((List<CryptoBoxAction>) list);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(List<CryptoBoxAction> data) {
                    List<BaseNode> mapCryptoBoxActionsToGroups;
                    Intrinsics.checkNotNullParameter(data, "data");
                    if (!data.isEmpty()) {
                        mapCryptoBoxActionsToGroups = WalletTransactionsPresenter.this.mapCryptoBoxActionsToGroups(data);
                        if (z) {
                            ((WalletTransactionsView) WalletTransactionsPresenter.this.getViewState()).renderItems(mapCryptoBoxActionsToGroups);
                        } else {
                            ((WalletTransactionsView) WalletTransactionsPresenter.this.getViewState()).renderInitialItems(mapCryptoBoxActionsToGroups);
                        }
                    } else {
                        WalletTransactionsPresenter.this.renderGlobalState(GlobalState.Empty.Common.INSTANCE);
                    }
                    ((WalletTransactionsView) WalletTransactionsPresenter.this.getViewState()).onLoadMoreComplete();
                }
            });
        }
    }

    private final void loadStakingOperations(final boolean z, boolean z2) {
        Observable stakingOperations$default;
        final boolean z3 = (z || z2) ? false : true;
        if (z3 && this.stakingOperationsCursor == null) {
            ((WalletTransactionsView) getViewState()).onLoadMoreComplete();
            return;
        }
        WalletTransactionsScreenType walletTransactionsScreenType = this.screenType;
        if (walletTransactionsScreenType instanceof WalletTransactionsScreenType.StakingDetailsTab) {
            stakingOperations$default = StakingInteractor.getStakingOperations$default(this.stakingInteractor, Long.valueOf(((WalletTransactionsScreenType.StakingDetailsTab) walletTransactionsScreenType).getStakingDetails().getId()), ((WalletTransactionsScreenType.StakingDetailsTab) this.screenType).getOperationsType(), null, this.stakingOperationsCursor, 4, null);
        } else if (!(walletTransactionsScreenType instanceof WalletTransactionsScreenType.StakingOperationsTab)) {
            return;
        } else {
            stakingOperations$default = StakingInteractor.getStakingOperations$default(this.stakingInteractor, null, ((WalletTransactionsScreenType.StakingOperationsTab) walletTransactionsScreenType).getOperationsType(), this.selectedNetworkItem.getNetworkId(), this.stakingOperationsCursor, 1, null);
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
        Observable<Result<T>> doFinally = observable.distinctUntilChanged().observeOn(this.schedulersProvider.mo1010ui()).doFinally(new Action() { // from class: com.iMe.ui.wallet.transaction.WalletTransactionsPresenter$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Action
            public final void run() {
                WalletTransactionsPresenter.loadInternal$lambda$2(WalletTransactionsPresenter.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "observable\n            .…e.showRefreshing(false) }");
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
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…rror.invoke(error)\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadInternal$lambda$2(WalletTransactionsPresenter this$0) {
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
        Observable observeOn = rxEventBus.getPublisher().ofType(RxEvent.class).observeOn(rxEventBus.getSchedulersProvider().mo1010ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n            .o…(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<RxEvent, Unit>() { // from class: com.iMe.ui.wallet.transaction.WalletTransactionsPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(RxEvent rxEvent) {
                m1860invoke(rxEvent);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1860invoke(RxEvent it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                RxEvent rxEvent = it;
                if (Intrinsics.areEqual(rxEvent, AppRxEvents.UpdateWalletScreen.INSTANCE) ? true : Intrinsics.areEqual(rxEvent, DomainRxEvents.WalletReset.INSTANCE) ? true : Intrinsics.areEqual(rxEvent, DomainRxEvents.WalletCreated.INSTANCE) ? true : Intrinsics.areEqual(rxEvent, DomainRxEvents.WalletRestored.INSTANCE) ? true : Intrinsics.areEqual(rxEvent, DomainRxEvents.RefreshTransactions.INSTANCE)) {
                    WalletTransactionsPresenter.load$default(WalletTransactionsPresenter.this, true, false, null, 6, null);
                } else if (rxEvent instanceof DomainRxEvents.StakingOperationsReload) {
                    WalletTransactionsPresenter.this.selectedNetworkItem = NetworkUiMappingKt.mapToUI(NetworksHelper.getNetworkById(((DomainRxEvents.StakingOperationsReload) rxEvent).getNetworkId()));
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
    /* JADX WARN: Multi-variable type inference failed */
    public final List<Transaction> filterTransactionsByTypeIfNeeded(List<? extends Transaction> list) {
        if (this.screenType instanceof WalletTransactionsScreenType.TokenDetailsTab) {
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (((WalletTransactionsScreenType.TokenDetailsTab) this.screenType).getTransactionsGroup().checkTransaction((Transaction) obj)) {
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
        boolean z = this.screenType instanceof WalletTransactionsScreenType.StakingOperationsTab;
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

    /* JADX INFO: Access modifiers changed from: private */
    public final List<BaseNode> mapCryptoBoxActionsToGroups(List<CryptoBoxAction> list) {
        List distinct;
        this.cryptoBoxActions.addAll(list);
        ArrayList arrayList = new ArrayList();
        distinct = CollectionsKt___CollectionsKt.distinct(this.cryptoBoxActions);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : distinct) {
            String formatISODate$default = StringExtKt.formatISODate$default(((CryptoBoxAction) obj).getIssuedAt(), null, 1, null);
            Object obj2 = linkedHashMap.get(formatISODate$default);
            if (obj2 == null) {
                obj2 = new ArrayList();
                linkedHashMap.put(formatISODate$default, obj2);
            }
            ((List) obj2).add(obj);
        }
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            arrayList.add(new HeaderItem((String) entry.getKey()));
            for (CryptoBoxAction cryptoBoxAction : (List) entry.getValue()) {
                arrayList.add(CryptoBoxActionUiMappingKt.mapToUi(cryptoBoxAction));
            }
        }
        return arrayList;
    }
}
