package com.iMe.p030ui.wallet.home.tabs.binancepay.history;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.common.AppRxEvents;
import com.iMe.manager.crypto.pay.BinancePayProcessManager;
import com.iMe.manager.crypto.pay.BinancePayProcessView;
import com.iMe.model.wallet.home.HeaderItem;
import com.iMe.model.wallet.home.pay.BinanceTransactionItem;
import com.iMe.p030ui.base.mvp.base.BasePresenter;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.p030ui.wallet.home.tabs.binancepay.history.WalletBinancePayHistoryFragment;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.utils.system.AndroidActivityHolder;
import com.iMe.storage.domain.interactor.binancepay.BinanceInternalInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.binancepay.BinanceTransaction;
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
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import timber.log.Timber;
/* compiled from: WalletBinancePayHistoryPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.home.tabs.binancepay.history.WalletBinancePayHistoryPresenter */
/* loaded from: classes4.dex */
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
        Observable doFinally = BinanceInternalInteractor.getTransactionHistory$default(this.binanceInternalInteractor, 0, str, this.tokenCode, 1, null).distinctUntilChanged().observeOn(this.schedulersProvider.mo1009ui()).doFinally(new Action() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.history.WalletBinancePayHistoryPresenter$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Action
            public final void run() {
                WalletBinancePayHistoryPresenter.loadTransactions$lambda$0(WalletBinancePayHistoryPresenter.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "binanceInternalInteracto…e.showRefreshing(false) }");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = doFinally.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends List<? extends BinanceTransaction>>, Unit>() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.history.WalletBinancePayHistoryPresenter$loadTransactions$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends BinanceTransaction>> result) {
                m1747invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1747invoke(Result<? extends List<? extends BinanceTransaction>> it) {
                ResourceManager resourceManager;
                List filterTransactionsByTypeIfNeeded;
                List<BaseNode> mapTransactionsToGroups;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends List<? extends BinanceTransaction>> result = it;
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
                    resourceManager = WalletBinancePayHistoryPresenter.this.resourceManager;
                    ((WalletBinancePayHistoryView) WalletBinancePayHistoryPresenter.this.getViewState()).showErrorToast(error, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.history.WalletBinancePayHistoryPresenter$loadTransactions$$inlined$subscribeWithErrorHandle$default$2
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
    public static final void loadTransactions$lambda$0(WalletBinancePayHistoryPresenter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ((WalletBinancePayHistoryView) this$0.getViewState()).showRefreshing(false);
    }

    public final void loadMoreTransactions(String lastId) {
        Intrinsics.checkNotNullParameter(lastId, "lastId");
        Observable observeOn = BinanceInternalInteractor.getTransactionHistory$default(this.binanceInternalInteractor, 0, lastId, this.tokenCode, 1, null).observeOn(this.schedulersProvider.mo1009ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "binanceInternalInteracto…(schedulersProvider.ui())");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends List<? extends BinanceTransaction>>, Unit>() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.history.WalletBinancePayHistoryPresenter$loadMoreTransactions$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends BinanceTransaction>> result) {
                m1746invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1746invoke(Result<? extends List<? extends BinanceTransaction>> it) {
                ResourceManager resourceManager;
                List filterTransactionsByTypeIfNeeded;
                List mapTransactionsToGroups;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends List<? extends BinanceTransaction>> result = it;
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
                    resourceManager = WalletBinancePayHistoryPresenter.this.resourceManager;
                    ((WalletBinancePayHistoryView) WalletBinancePayHistoryPresenter.this.getViewState()).showErrorToast((Result.Error) result, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.history.WalletBinancePayHistoryPresenter$loadMoreTransactions$$inlined$subscribeWithErrorHandle$default$2
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

    @Override // com.iMe.p030ui.base.mvp.base.BasePresenter, moxy.MvpPresenter
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
        Observable observeOn = rxEventBus.getPublisher().ofType(RxEvent.class).observeOn(rxEventBus.getSchedulersProvider().mo1009ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n            .o…(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<RxEvent, Unit>() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.history.WalletBinancePayHistoryPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(RxEvent rxEvent) {
                m1745invoke(rxEvent);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1745invoke(RxEvent it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                RxEvent rxEvent = it;
                if (Intrinsics.areEqual(rxEvent, AppRxEvents.UpdateWalletScreen.INSTANCE) ? true : Intrinsics.areEqual(rxEvent, DomainRxEvents.WalletReset.INSTANCE) ? true : Intrinsics.areEqual(rxEvent, DomainRxEvents.WalletCreated.INSTANCE) ? true : Intrinsics.areEqual(rxEvent, DomainRxEvents.WalletRestored.INSTANCE)) {
                    WalletBinancePayHistoryPresenter.loadTransactions$default(WalletBinancePayHistoryPresenter.this, true, null, 2, null);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.home.tabs.binancepay.history.WalletBinancePayHistoryPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2
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
