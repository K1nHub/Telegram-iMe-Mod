package com.smedialink.p031ui.wallet.home.p032v2.tabs.binancepay.history;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.smedialink.common.AppRxEvents;
import com.smedialink.manager.crypto.pay.BinancePayProcessManager;
import com.smedialink.manager.crypto.pay.BinancePayProcessView;
import com.smedialink.model.wallet.home.HeaderItem;
import com.smedialink.model.wallet.home.pay.BinanceTransactionItem;
import com.smedialink.p031ui.base.mvp.base.BasePresenter;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.p031ui.wallet.home.p032v2.tabs.binancepay.history.WalletBinancePayHistoryFragment;
import com.smedialink.storage.data.network.handlers.impl.ApiErrorHandler;
import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.data.utils.system.AndroidActivityHolder;
import com.smedialink.storage.domain.interactor.binancepay.BinanceInternalInteractor;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.binancepay.BinanceTransaction;
import com.smedialink.storage.domain.utils.p030rx.RxEventBus;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import com.smedialink.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.smedialink.storage.domain.utils.p030rx.event.RxEvent;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.common.StringExtKt;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import timber.log.Timber;
/* compiled from: WalletBinancePayHistoryPresenter.kt */
@InjectViewState
/* renamed from: com.smedialink.ui.wallet.home.v2.tabs.binancepay.history.WalletBinancePayHistoryPresenter */
/* loaded from: classes3.dex */
public final class WalletBinancePayHistoryPresenter extends BasePresenter<WalletBinancePayHistoryView> {
    private final BinanceInternalInteractor binanceInternalInteractor;
    private final BinancePayProcessManager binancePayProcessManager;
    private final ResourceManager resourceManager;
    private final RxEventBus rxEventBus;
    private final SchedulersProvider schedulersProvider;
    private final WalletBinancePayHistoryFragment.ScreenType screenType;
    private final String tokenCode;
    private final List<BinanceTransaction> transactions;

    public WalletBinancePayHistoryPresenter(WalletBinancePayHistoryFragment.ScreenType screenType, String str, BinancePayProcessManager binancePayProcessManager, BinanceInternalInteractor binanceInternalInteractor, RxEventBus rxEventBus, SchedulersProvider schedulersProvider, ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(screenType, "screenType");
        Intrinsics.checkNotNullParameter(binancePayProcessManager, "binancePayProcessManager");
        Intrinsics.checkNotNullParameter(binanceInternalInteractor, "binanceInternalInteractor");
        Intrinsics.checkNotNullParameter(rxEventBus, "rxEventBus");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.screenType = screenType;
        this.tokenCode = str;
        this.binancePayProcessManager = binancePayProcessManager;
        this.binanceInternalInteractor = binanceInternalInteractor;
        this.rxEventBus = rxEventBus;
        this.schedulersProvider = schedulersProvider;
        this.resourceManager = resourceManager;
        this.transactions = new ArrayList();
    }

    public final void startBinancePayFlow(AndroidActivityHolder holder, BinanceTransaction transaction) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(transaction, "transaction");
        this.binancePayProcessManager.pay(holder, transaction);
    }

    public static /* synthetic */ void loadTransactions$default(WalletBinancePayHistoryPresenter walletBinancePayHistoryPresenter, boolean z, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            str = null;
        }
        walletBinancePayHistoryPresenter.loadTransactions(z, str);
    }

    public final void loadTransactions(final boolean z, String str) {
        if (z) {
            this.transactions.clear();
            ((WalletBinancePayHistoryView) getViewState()).resetLoadMore();
        }
        Observable doFinally = BinanceInternalInteractor.getTransactionHistory$default(this.binanceInternalInteractor, 0, str, this.tokenCode, 1, null).distinctUntilChanged().observeOn(this.schedulersProvider.mo707ui()).doFinally(new Action() { // from class: com.smedialink.ui.wallet.home.v2.tabs.binancepay.history.WalletBinancePayHistoryPresenter$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Action
            public final void run() {
                WalletBinancePayHistoryPresenter.m1675loadTransactions$lambda0(WalletBinancePayHistoryPresenter.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "binanceInternalInteracto…e.showRefreshing(false) }");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = doFinally.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.home.v2.tabs.binancepay.history.WalletBinancePayHistoryPresenter$loadTransactions$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                ResourceManager resourceManager;
                List filterTransactionsByTypeIfNeeded;
                List<BaseNode> mapTransactionsToGroups;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
                if (result instanceof Result.Success) {
                    WalletBinancePayHistoryPresenter walletBinancePayHistoryPresenter = WalletBinancePayHistoryPresenter.this;
                    filterTransactionsByTypeIfNeeded = walletBinancePayHistoryPresenter.filterTransactionsByTypeIfNeeded((List) ((Result.Success) result).getData());
                    mapTransactionsToGroups = walletBinancePayHistoryPresenter.mapTransactionsToGroups(filterTransactionsByTypeIfNeeded);
                    if (mapTransactionsToGroups.isEmpty()) {
                        ((WalletBinancePayHistoryView) WalletBinancePayHistoryPresenter.this.getViewState()).onEmptyState();
                    } else {
                        ((WalletBinancePayHistoryView) WalletBinancePayHistoryPresenter.this.getViewState()).onLoadedTransactions(mapTransactionsToGroups);
                    }
                } else if (result instanceof Result.Loading) {
                    if (z) {
                        ((WalletBinancePayHistoryView) WalletBinancePayHistoryPresenter.this.getViewState()).showRefreshing(true);
                    } else {
                        ((WalletBinancePayHistoryView) WalletBinancePayHistoryPresenter.this.getViewState()).onLoadingState();
                    }
                } else if (result instanceof Result.Error) {
                    Result.Error error = (Result.Error) result;
                    if (error.getError().getStatus() == ApiErrorHandler.ErrorStatus.NO_CONNECTION) {
                        ((WalletBinancePayHistoryView) WalletBinancePayHistoryPresenter.this.getViewState()).onNoInternetErrorState();
                    } else {
                        ((WalletBinancePayHistoryView) WalletBinancePayHistoryPresenter.this.getViewState()).onUnexpectedErrorState();
                    }
                    ErrorModel error2 = error.getError();
                    resourceManager = WalletBinancePayHistoryPresenter.this.resourceManager;
                    ((WalletBinancePayHistoryView) WalletBinancePayHistoryPresenter.this.getViewState()).showToast(error2.getMessage(resourceManager));
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.wallet.home.v2.tabs.binancepay.history.WalletBinancePayHistoryPresenter$loadTransactions$$inlined$subscribeWithErrorHandle$default$2
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

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: loadTransactions$lambda-0  reason: not valid java name */
    public static final void m1675loadTransactions$lambda0(WalletBinancePayHistoryPresenter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ((WalletBinancePayHistoryView) this$0.getViewState()).showRefreshing(false);
    }

    public final void loadMoreTransactions(String lastId) {
        Intrinsics.checkNotNullParameter(lastId, "lastId");
        Observable observeOn = BinanceInternalInteractor.getTransactionHistory$default(this.binanceInternalInteractor, 0, lastId, this.tokenCode, 1, null).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "binanceInternalInteracto…(schedulersProvider.ui())");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.home.v2.tabs.binancepay.history.WalletBinancePayHistoryPresenter$loadMoreTransactions$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                ResourceManager resourceManager;
                List filterTransactionsByTypeIfNeeded;
                List<T> mapTransactionsToGroups;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
                if (result instanceof Result.Success) {
                    filterTransactionsByTypeIfNeeded = WalletBinancePayHistoryPresenter.this.filterTransactionsByTypeIfNeeded((List) ((Result.Success) result).getData());
                    mapTransactionsToGroups = WalletBinancePayHistoryPresenter.this.mapTransactionsToGroups(filterTransactionsByTypeIfNeeded);
                    if (!filterTransactionsByTypeIfNeeded.isEmpty()) {
                        ((WalletBinancePayHistoryView) WalletBinancePayHistoryPresenter.this.getViewState()).onLoadMoreItems(mapTransactionsToGroups);
                    } else {
                        ((WalletBinancePayHistoryView) WalletBinancePayHistoryPresenter.this.getViewState()).onLoadMoreComplete();
                    }
                } else if (result instanceof Result.Error) {
                    ((WalletBinancePayHistoryView) WalletBinancePayHistoryPresenter.this.getViewState()).onLoadMoreError();
                    ErrorModel error = ((Result.Error) result).getError();
                    resourceManager = WalletBinancePayHistoryPresenter.this.resourceManager;
                    ((WalletBinancePayHistoryView) WalletBinancePayHistoryPresenter.this.getViewState()).showToast(error.getMessage(resourceManager));
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.wallet.home.v2.tabs.binancepay.history.WalletBinancePayHistoryPresenter$loadMoreTransactions$$inlined$subscribeWithErrorHandle$default$2
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        BinancePayProcessManager binancePayProcessManager = this.binancePayProcessManager;
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        binancePayProcessManager.attachViewState((BinancePayProcessView) viewState);
        loadTransactions$default(this, false, null, 3, null);
        listenEvents();
    }

    @Override // com.smedialink.p031ui.base.mvp.base.BasePresenter, moxy.MvpPresenter
    public void onDestroy() {
        this.binancePayProcessManager.onDetachViewState();
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final List<BinanceTransaction> filterTransactionsByTypeIfNeeded(List<? extends BinanceTransaction> list) {
        if (this.screenType instanceof WalletBinancePayHistoryFragment.ScreenType.TokenDetailsTab) {
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (((WalletBinancePayHistoryFragment.ScreenType.TokenDetailsTab) this.screenType).getTransactionsGroup().checkTransaction((BinanceTransaction) obj)) {
                    arrayList.add(obj);
                }
            }
            return arrayList;
        }
        return list;
    }

    private final void listenEvents() {
        RxEventBus rxEventBus = this.rxEventBus;
        Observable observeOn = rxEventBus.getPublisher().ofType(RxEvent.class).observeOn(rxEventBus.getSchedulersProvider().mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n              …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.home.v2.tabs.binancepay.history.WalletBinancePayHistoryPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                RxEvent rxEvent = (RxEvent) it;
                if (rxEvent instanceof AppRxEvents.UpdateWalletScreen ? true : rxEvent instanceof DomainRxEvents.SuccessResetWallet ? true : rxEvent instanceof DomainRxEvents.SuccessCreateWallet ? true : rxEvent instanceof DomainRxEvents.SuccessRestoreWallet) {
                    WalletBinancePayHistoryPresenter.loadTransactions$default(WalletBinancePayHistoryPresenter.this, true, null, 2, null);
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.wallet.home.v2.tabs.binancepay.history.WalletBinancePayHistoryPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2
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
    public final List<BaseNode> mapTransactionsToGroups(List<? extends BinanceTransaction> list) {
        List distinct;
        this.transactions.addAll(list);
        distinct = CollectionsKt___CollectionsKt.distinct(this.transactions);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : distinct) {
            String formatISODate$default = StringExtKt.formatISODate$default(((BinanceTransaction) obj).getCreatedAt(), null, 1, null);
            Object obj2 = linkedHashMap.get(formatISODate$default);
            if (obj2 == null) {
                obj2 = new ArrayList();
                linkedHashMap.put(formatISODate$default, obj2);
            }
            ((List) obj2).add(obj);
        }
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            arrayList.add(new HeaderItem((String) entry.getKey()));
            for (BinanceTransaction binanceTransaction : (List) entry.getValue()) {
                arrayList.add(new BinanceTransactionItem(binanceTransaction));
            }
        }
        return arrayList;
    }
}
