package com.iMe.p031ui.wallet.home.p032v2.tabs.binancepay.history;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.manager.crypto.pay.BinancePayProcessManager;
import com.iMe.manager.crypto.pay.BinancePayProcessView;
import com.iMe.model.wallet.home.HeaderItem;
import com.iMe.model.wallet.home.pay.BinanceTransactionItem;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.p031ui.wallet.home.p032v2.tabs.binancepay.history.WalletBinancePayHistoryFragment;
import com.iMe.storage.data.utils.system.AndroidActivityHolder;
import com.iMe.storage.domain.interactor.binancepay.BinanceInternalInteractor;
import com.iMe.storage.domain.model.binancepay.BinanceTransaction;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.p030rx.event.RxEvent;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.StringExtKt;
import com.iMe.utils.extentions.p033rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
/* compiled from: WalletBinancePayHistoryPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.home.v2.tabs.binancepay.history.WalletBinancePayHistoryPresenter */
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

    public final void loadTransactions(boolean z, String str) {
        if (z) {
            this.transactions.clear();
            ((WalletBinancePayHistoryView) getViewState()).resetLoadMore();
        }
        Observable doFinally = BinanceInternalInteractor.getTransactionHistory$default(this.binanceInternalInteractor, 0, str, this.tokenCode, 1, null).distinctUntilChanged().observeOn(this.schedulersProvider.mo693ui()).doFinally(new Action() { // from class: com.iMe.ui.wallet.home.v2.tabs.binancepay.history.WalletBinancePayHistoryPresenter$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Action
            public final void run() {
                WalletBinancePayHistoryPresenter.loadTransactions$lambda$0(WalletBinancePayHistoryPresenter.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "binanceInternalInteracto…e.showRefreshing(false) }");
        Disposable subscribe = doFinally.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2237x6d7572a3(this, z)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2238x6d7572a4((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadTransactions$lambda$0(WalletBinancePayHistoryPresenter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ((WalletBinancePayHistoryView) this$0.getViewState()).showRefreshing(false);
    }

    public final void loadMoreTransactions(String lastId) {
        Intrinsics.checkNotNullParameter(lastId, "lastId");
        Observable observeOn = BinanceInternalInteractor.getTransactionHistory$default(this.binanceInternalInteractor, 0, lastId, this.tokenCode, 1, null).observeOn(this.schedulersProvider.mo693ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "binanceInternalInteracto…(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2235xdc1b5198(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2236xdc1b5199((BaseView) getViewState())));
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

    @Override // com.iMe.p031ui.base.mvp.base.BasePresenter, moxy.MvpPresenter
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
        Observable observeOn = rxEventBus.getPublisher().ofType(RxEvent.class).observeOn(rxEventBus.getSchedulersProvider().mo693ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n              …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2233xab042a08(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2234xab042a09(null)));
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
