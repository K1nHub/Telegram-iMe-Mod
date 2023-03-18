package com.smedialink.p031ui.wallet.transaction;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.i_staking.StakingInteractor;
import com.smedialink.mapper.staking.StackingOperationUiMappingKt;
import com.smedialink.mapper.transaction.TransactionUiMappingKt;
import com.smedialink.model.common.GlobalStateItem;
import com.smedialink.model.state.GlobalState;
import com.smedialink.model.wallet.home.HeaderItem;
import com.smedialink.model.wallet.transaction.StakingOperationItem;
import com.smedialink.p031ui.base.mvp.base.BasePresenter;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.p031ui.wallet.transaction.WalletTransactionsFragment;
import com.smedialink.storage.data.network.handlers.impl.ApiErrorHandler;
import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.domain.interactor.wallet.WalletInteractor;
import com.smedialink.storage.domain.manager.crypto.CryptoAccessManager;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.staking.StakingOperation;
import com.smedialink.storage.domain.model.wallet.Hint;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import com.smedialink.storage.domain.model.wallet.transaction.Transaction;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import com.smedialink.storage.domain.storage.HintsPreferenceHelper;
import com.smedialink.storage.domain.utils.p030rx.RxEventBus;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import com.smedialink.storage.domain.utils.p030rx.event.RxEvent;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.common.StringExtKt;
import com.smedialink.utils.extentions.p033rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
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
/* compiled from: WalletTransactionsPresenter.kt */
@InjectViewState
/* renamed from: com.smedialink.ui.wallet.transaction.WalletTransactionsPresenter */
/* loaded from: classes3.dex */
public final class WalletTransactionsPresenter extends BasePresenter<WalletTransactionsView> {
    private final CryptoAccessManager cryptoAccessManager;
    private final HintsPreferenceHelper hintsPreferenceHelper;
    private final ResourceManager resourceManager;
    private final RxEventBus rxEventBus;
    private final SchedulersProvider schedulersProvider;
    private final WalletTransactionsFragment.ScreenType screenType;
    private NetworkType selectedNetworkType;
    private final StakingInteractor stakingInteractor;
    private final List<StakingOperation> stakingOperations;
    private String stakingOperationsCursor;
    private final TokenCode tokenCode;
    private final List<Transaction> transactions;
    private final WalletInteractor walletInteractor;

    public WalletTransactionsPresenter(CryptoPreferenceHelper cryptoPreferenceHelper, TokenCode tokenCode, WalletTransactionsFragment.ScreenType screenType, CryptoAccessManager cryptoAccessManager, HintsPreferenceHelper hintsPreferenceHelper, ResourceManager resourceManager, RxEventBus rxEventBus, SchedulersProvider schedulersProvider, StakingInteractor stakingInteractor, WalletInteractor walletInteractor) {
        NetworkType networkType;
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
        Intrinsics.checkNotNullParameter(screenType, "screenType");
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(hintsPreferenceHelper, "hintsPreferenceHelper");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(rxEventBus, "rxEventBus");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(stakingInteractor, "stakingInteractor");
        Intrinsics.checkNotNullParameter(walletInteractor, "walletInteractor");
        this.tokenCode = tokenCode;
        this.screenType = screenType;
        this.cryptoAccessManager = cryptoAccessManager;
        this.hintsPreferenceHelper = hintsPreferenceHelper;
        this.resourceManager = resourceManager;
        this.rxEventBus = rxEventBus;
        this.schedulersProvider = schedulersProvider;
        this.stakingInteractor = stakingInteractor;
        this.walletInteractor = walletInteractor;
        this.transactions = new ArrayList();
        this.stakingOperations = new ArrayList();
        if ((screenType instanceof WalletTransactionsFragment.ScreenType.StakingOperationsTab) && !cryptoPreferenceHelper.getNetworkType().isEVM()) {
            networkType = (NetworkType) CollectionsKt.first((List<? extends Object>) NetworkType.Companion.getEVMNetworks());
        } else {
            networkType = cryptoPreferenceHelper.getNetworkType();
        }
        this.selectedNetworkType = networkType;
    }

    public final void startChooseNetworkDialog() {
        ((WalletTransactionsView) getViewState()).showChooseNetworkDialog(this.selectedNetworkType, NetworkType.Companion.getNetworksByBlockchains(this.cryptoAccessManager.getCreatedWalletsBlockchains()), new WalletTransactionsPresenter$startChooseNetworkDialog$1(this));
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
            loadTransactions(z, str);
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
        NetworkType networkType;
        Intrinsics.checkNotNullParameter(item, "item");
        WalletTransactionsView walletTransactionsView = (WalletTransactionsView) getViewState();
        WalletTransactionsFragment.ScreenType screenType = this.screenType;
        if (screenType instanceof WalletTransactionsFragment.ScreenType.StakingDetailsTab) {
            networkType = ((WalletTransactionsFragment.ScreenType.StakingDetailsTab) screenType).getStakingDetails().getNetworkType();
        } else if (!(screenType instanceof WalletTransactionsFragment.ScreenType.StakingOperationsTab)) {
            return;
        } else {
            networkType = this.selectedNetworkType;
        }
        walletTransactionsView.openStakingOperationDetails(item, networkType);
    }

    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        ((WalletTransactionsView) getViewState()).setupNetworkType(this.selectedNetworkType);
        load$default(this, false, true, null, 5, null);
        listenEvents();
    }

    private final void loadTransactions(boolean z, String str) {
        boolean z2 = str != null;
        loadInternal(z, z2, WalletInteractor.getWalletTransactions$default(this.walletInteractor, z, str, this.tokenCode, 0, this.selectedNetworkType, 8, null), new WalletTransactionsPresenter$loadTransactions$1(this, z2));
    }

    public final void renderGlobalState(GlobalState globalState) {
        List<BaseNode> mutableListOf;
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(new GlobalStateItem(globalState));
        ((WalletTransactionsView) getViewState()).renderItems(mutableListOf);
    }

    private final void loadStakingOperations(boolean z, boolean z2) {
        Observable stakingOperations$default;
        boolean z3 = (z || z2) ? false : true;
        if (z3 && this.stakingOperationsCursor != null) {
            ((WalletTransactionsView) getViewState()).onLoadMoreComplete();
            return;
        }
        WalletTransactionsFragment.ScreenType screenType = this.screenType;
        if (screenType instanceof WalletTransactionsFragment.ScreenType.StakingDetailsTab) {
            stakingOperations$default = StakingInteractor.getStakingOperations$default(this.stakingInteractor, Long.valueOf(((WalletTransactionsFragment.ScreenType.StakingDetailsTab) screenType).getStakingDetails().getId()), ((WalletTransactionsFragment.ScreenType.StakingDetailsTab) this.screenType).getOperationsType(), null, this.stakingOperationsCursor, 4, null);
        } else if (!(screenType instanceof WalletTransactionsFragment.ScreenType.StakingOperationsTab)) {
            return;
        } else {
            stakingOperations$default = StakingInteractor.getStakingOperations$default(this.stakingInteractor, null, ((WalletTransactionsFragment.ScreenType.StakingOperationsTab) screenType).getOperationsType(), this.selectedNetworkType, this.stakingOperationsCursor, 1, null);
        }
        loadInternal(z, z3, stakingOperations$default, new WalletTransactionsPresenter$loadStakingOperations$1(this, z3));
    }

    private final <T> void loadInternal(boolean z, boolean z2, Observable<Result<T>> observable, Function1<? super T, Unit> function1) {
        Observable<Result<T>> doFinally = observable.distinctUntilChanged().observeOn(this.schedulersProvider.mo707ui()).doFinally(new Action() { // from class: com.smedialink.ui.wallet.transaction.WalletTransactionsPresenter$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Action
            public final void run() {
                WalletTransactionsPresenter.loadInternal$lambda$0(WalletTransactionsPresenter.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "observable\n             …e.showRefreshing(false) }");
        Disposable subscribe = doFinally.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2310x713e530(function1, z2, this, z)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2311x713e531((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public static final void loadInternal$lambda$0(WalletTransactionsPresenter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ((WalletTransactionsView) this$0.getViewState()).showRefreshing(false);
    }

    public final void onLoading(boolean z) {
        if (z) {
            ((WalletTransactionsView) getViewState()).showRefreshing(true);
        } else {
            renderGlobalState(GlobalState.Progress.INSTANCE);
        }
    }

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
        Observable observeOn = rxEventBus.getPublisher().ofType(RxEvent.class).observeOn(rxEventBus.getSchedulersProvider().mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n              …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2308x655d1dad(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2309x655d1dae(null)));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

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
