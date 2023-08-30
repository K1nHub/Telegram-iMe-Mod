package com.iMe.p031ui.wallet.swap.token;

import com.iMe.mapper.wallet.select.SelectableMappingKt;
import com.iMe.model.wallet.select.SelectableTokenItem;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.p031ui.wallet.swap.token.WalletSelectTokenFragment;
import com.iMe.storage.data.utils.extentions.NumberExtKt;
import com.iMe.storage.domain.interactor.binancepay.BinanceInternalInteractor;
import com.iMe.storage.domain.interactor.crypto.swap.SwapInteractor;
import com.iMe.storage.domain.interactor.wallet.WalletInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.binancepay.BinanceTokenBalanceInfo;
import com.iMe.storage.domain.model.common.CursoredData;
import com.iMe.storage.domain.model.wallet.swap.SwapProtocol;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.storage.domain.model.wallet.token.TokenCode;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.model.wallet.transaction.TransactionDirection;
import com.iMe.storage.domain.utils.extentions.TokenExtKt;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p032rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import com.iMe.utils.extentions.p032rx.SchedulersExtKt;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.subjects.PublishSubject;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import moxy.InjectViewState;
import p033j$.util.Collection$EL;
import p033j$.util.function.Predicate;
import timber.log.Timber;
/* compiled from: WalletSelectTokenPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.swap.token.WalletSelectTokenPresenter */
/* loaded from: classes4.dex */
public final class WalletSelectTokenPresenter extends BasePresenter<WalletSelectTokenView> {
    private final BinanceInternalInteractor binanceInternalInteractor;
    private String cursor;
    private final Lazy ignoredToken$delegate;
    private final String networkId;
    private final boolean onlyPositiveBalance;
    private String query;
    private final PublishSubject<String> querySubject;
    private final ResourceManager resourceManager;
    private final SchedulersProvider schedulersProvider;
    private final WalletSelectTokenFragment.ScreenType screenType;
    private final TokenDetailed selectedToken;
    private final Lazy swapDirection$delegate;
    private final SwapInteractor swapInteractor;
    private final List<SelectableTokenItem> swapItems;
    private final Lazy swapProtocol$delegate;
    private final WalletInteractor walletInteractor;

    static {
        new Companion(null);
    }

    public WalletSelectTokenPresenter(WalletSelectTokenFragment.ScreenType screenType, TokenDetailed tokenDetailed, String networkId, boolean z, BinanceInternalInteractor binanceInternalInteractor, ResourceManager resourceManager, SchedulersProvider schedulersProvider, SwapInteractor swapInteractor, WalletInteractor walletInteractor) {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Intrinsics.checkNotNullParameter(screenType, "screenType");
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Intrinsics.checkNotNullParameter(binanceInternalInteractor, "binanceInternalInteractor");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(swapInteractor, "swapInteractor");
        Intrinsics.checkNotNullParameter(walletInteractor, "walletInteractor");
        this.screenType = screenType;
        this.selectedToken = tokenDetailed;
        this.networkId = networkId;
        this.onlyPositiveBalance = z;
        this.binanceInternalInteractor = binanceInternalInteractor;
        this.resourceManager = resourceManager;
        this.schedulersProvider = schedulersProvider;
        this.swapInteractor = swapInteractor;
        this.walletInteractor = walletInteractor;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<SwapProtocol>() { // from class: com.iMe.ui.wallet.swap.token.WalletSelectTokenPresenter$swapProtocol$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final SwapProtocol invoke() {
                WalletSelectTokenFragment.ScreenType screenType2;
                SwapProtocol swapProtocol;
                screenType2 = WalletSelectTokenPresenter.this.screenType;
                WalletSelectTokenFragment.ScreenType.Swap swap = screenType2 instanceof WalletSelectTokenFragment.ScreenType.Swap ? (WalletSelectTokenFragment.ScreenType.Swap) screenType2 : null;
                return (swap == null || (swapProtocol = swap.getSwapProtocol()) == null) ? SwapProtocol.ONEINCH : swapProtocol;
            }
        });
        this.swapProtocol$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<TransactionDirection>() { // from class: com.iMe.ui.wallet.swap.token.WalletSelectTokenPresenter$swapDirection$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TransactionDirection invoke() {
                WalletSelectTokenFragment.ScreenType screenType2;
                TransactionDirection swapDirection;
                screenType2 = WalletSelectTokenPresenter.this.screenType;
                WalletSelectTokenFragment.ScreenType.Swap swap = screenType2 instanceof WalletSelectTokenFragment.ScreenType.Swap ? (WalletSelectTokenFragment.ScreenType.Swap) screenType2 : null;
                return (swap == null || (swapDirection = swap.getSwapDirection()) == null) ? TransactionDirection.OUT : swapDirection;
            }
        });
        this.swapDirection$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<TokenDetailed>() { // from class: com.iMe.ui.wallet.swap.token.WalletSelectTokenPresenter$ignoredToken$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TokenDetailed invoke() {
                WalletSelectTokenFragment.ScreenType screenType2;
                screenType2 = WalletSelectTokenPresenter.this.screenType;
                WalletSelectTokenFragment.ScreenType.Swap swap = screenType2 instanceof WalletSelectTokenFragment.ScreenType.Swap ? (WalletSelectTokenFragment.ScreenType.Swap) screenType2 : null;
                if (swap != null) {
                    return swap.getIgnoredToken();
                }
                return null;
            }
        });
        this.ignoredToken$delegate = lazy3;
        this.swapItems = new ArrayList();
        PublishSubject<String> create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create()");
        this.querySubject = create;
        this.cursor = "";
        this.query = "";
    }

    private final SwapProtocol getSwapProtocol() {
        return (SwapProtocol) this.swapProtocol$delegate.getValue();
    }

    private final TransactionDirection getSwapDirection() {
        return (TransactionDirection) this.swapDirection$delegate.getValue();
    }

    public final TokenDetailed getIgnoredToken() {
        return (TokenDetailed) this.ignoredToken$delegate.getValue();
    }

    public final void onQueryUpdate(String newQuery) {
        CharSequence trim;
        Intrinsics.checkNotNullParameter(newQuery, "newQuery");
        PublishSubject<String> publishSubject = this.querySubject;
        trim = StringsKt__StringsKt.trim(newQuery);
        publishSubject.onNext(trim.toString());
    }

    public final void reloadSearchResults() {
        this.cursor = "";
        this.swapItems.clear();
        searchByQuery(true);
    }

    public static /* synthetic */ void searchByQuery$default(WalletSelectTokenPresenter walletSelectTokenPresenter, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        walletSelectTokenPresenter.searchByQuery(z);
    }

    public final void searchByQuery(final boolean z) {
        final boolean z2 = !z;
        if (z2) {
            if (this.cursor.length() == 0) {
                ((WalletSelectTokenView) getViewState()).onLoadMoreComplete();
                return;
            }
        }
        Observable<Result<List<SelectableTokenItem>>> observeOn = getSearchObservable().observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "getSearchObservable()\n  …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends List<? extends SelectableTokenItem>>, Unit>() { // from class: com.iMe.ui.wallet.swap.token.WalletSelectTokenPresenter$searchByQuery$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends SelectableTokenItem>> result) {
                m1626invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1626invoke(Result<? extends List<? extends SelectableTokenItem>> it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends List<? extends SelectableTokenItem>> result = it;
                if (result instanceof Result.Success) {
                    WalletSelectTokenPresenter.this.onSwapTokensSuccess((List) ((Result.Success) result).getData(), z2);
                } else if (result instanceof Result.Loading) {
                    if (z) {
                        ((WalletSelectTokenView) WalletSelectTokenPresenter.this.getViewState()).onLoadingState();
                    }
                } else if (result instanceof Result.Error) {
                    if (z2) {
                        ((WalletSelectTokenView) WalletSelectTokenPresenter.this.getViewState()).onLoadMoreError();
                    } else if (((Result.Error) result).getError().isNoConnectionStatus()) {
                        ((WalletSelectTokenView) WalletSelectTokenPresenter.this.getViewState()).onNoInternetErrorState();
                    } else {
                        ((WalletSelectTokenView) WalletSelectTokenPresenter.this.getViewState()).onUnexpectedErrorState();
                    }
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.swap.token.WalletSelectTokenPresenter$searchByQuery$$inlined$subscribeWithErrorHandle$default$2
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

    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        subscribeToQueryChanges();
        loadBalances();
    }

    private final void loadBalances() {
        WalletSelectTokenFragment.ScreenType screenType = this.screenType;
        if (screenType instanceof WalletSelectTokenFragment.ScreenType.Send) {
            loadInternalBalances();
        } else if (screenType instanceof WalletSelectTokenFragment.ScreenType.Binance) {
            loadBinanceBalances(((WalletSelectTokenFragment.ScreenType.Binance) screenType).getTokens());
        } else if (screenType instanceof WalletSelectTokenFragment.ScreenType.Swap) {
            searchByQuery(true);
        }
    }

    private final void loadBinanceBalances(final List<TokenDetailed> list) {
        Observable<Result<List<BinanceTokenBalanceInfo>>> observeOn = this.binanceInternalInteractor.getUserBalance().observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "binanceInternalInteracto…(schedulersProvider.ui())");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends List<? extends BinanceTokenBalanceInfo>>, Unit>() { // from class: com.iMe.ui.wallet.swap.token.WalletSelectTokenPresenter$loadBinanceBalances$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends BinanceTokenBalanceInfo>> result) {
                m1624invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1624invoke(Result<? extends List<? extends BinanceTokenBalanceInfo>> it) {
                ResourceManager resourceManager;
                Result.Success success;
                List<SelectableTokenItem> withExcludedSelectedToken;
                Object obj;
                boolean z;
                SelectableTokenItem selectableTokenItem;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends List<? extends BinanceTokenBalanceInfo>> result = it;
                if (result instanceof Result.Success) {
                    List list2 = (List) ((Result.Success) result).getData();
                    if (!((Collection) success.getData()).isEmpty()) {
                        List<TokenDetailed> list3 = list;
                        ArrayList arrayList = new ArrayList();
                        for (TokenDetailed tokenDetailed : list3) {
                            Iterator it2 = list2.iterator();
                            while (true) {
                                selectableTokenItem = null;
                                selectableTokenItem = null;
                                if (!it2.hasNext()) {
                                    obj = null;
                                    break;
                                }
                                obj = it2.next();
                                if (Intrinsics.areEqual(((BinanceTokenBalanceInfo) obj).getAssetShortName(), tokenDetailed.getTicker())) {
                                    break;
                                }
                            }
                            BinanceTokenBalanceInfo binanceTokenBalanceInfo = (BinanceTokenBalanceInfo) obj;
                            z = this.onlyPositiveBalance;
                            if (z) {
                                if (binanceTokenBalanceInfo != null && !NumberExtKt.isZero(Double.valueOf(binanceTokenBalanceInfo.getCombined().getTotal()))) {
                                    selectableTokenItem = new SelectableTokenItem(true, tokenDetailed, SelectableMappingKt.mapToSelectableBalance(binanceTokenBalanceInfo));
                                }
                            } else {
                                selectableTokenItem = new SelectableTokenItem(true, tokenDetailed, binanceTokenBalanceInfo != null ? SelectableMappingKt.mapToSelectableBalance(binanceTokenBalanceInfo) : null);
                            }
                            if (selectableTokenItem != null) {
                                arrayList.add(selectableTokenItem);
                            }
                        }
                        withExcludedSelectedToken = this.withExcludedSelectedToken(arrayList);
                        ((WalletSelectTokenView) this.getViewState()).renderItems(withExcludedSelectedToken);
                        return;
                    }
                    ((WalletSelectTokenView) this.getViewState()).onEmptyState();
                } else if (result instanceof Result.Error) {
                    Result.Error error = (Result.Error) result;
                    if (error.getError().isNoConnectionStatus()) {
                        ((WalletSelectTokenView) this.getViewState()).onNoInternetErrorState();
                    } else {
                        ((WalletSelectTokenView) this.getViewState()).onUnexpectedErrorState();
                    }
                    resourceManager = this.resourceManager;
                    ((WalletSelectTokenView) this.getViewState()).showErrorToast(error, resourceManager);
                } else if (result instanceof Result.Loading) {
                    ((WalletSelectTokenView) this.getViewState()).onLoadingState();
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.swap.token.WalletSelectTokenPresenter$loadBinanceBalances$$inlined$subscribeWithErrorHandle$default$2
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

    private final void loadInternalBalances() {
        Observable<Result<List<TokenBalance>>> observeOn = this.walletInteractor.getWalletBalance(true, this.networkId).distinctUntilChanged().observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "walletInteractor\n       …(schedulersProvider.ui())");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends List<? extends TokenBalance>>, Unit>() { // from class: com.iMe.ui.wallet.swap.token.WalletSelectTokenPresenter$loadInternalBalances$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends TokenBalance>> result) {
                m1625invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1625invoke(Result<? extends List<? extends TokenBalance>> it) {
                ResourceManager resourceManager;
                List<SelectableTokenItem> withExcludedSelectedToken;
                boolean z;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends List<? extends TokenBalance>> result = it;
                if (result instanceof Result.Success) {
                    List<TokenBalance> list = (List) ((Result.Success) result).getData();
                    if (!(!list.isEmpty())) {
                        ((WalletSelectTokenView) WalletSelectTokenPresenter.this.getViewState()).onEmptyState();
                        return;
                    }
                    ArrayList arrayList = new ArrayList();
                    for (TokenBalance tokenBalance : list) {
                        z = WalletSelectTokenPresenter.this.onlyPositiveBalance;
                        SelectableTokenItem selectableTokenItem = (z && NumberExtKt.isZero(Double.valueOf(tokenBalance.getTotal()))) ? null : new SelectableTokenItem(false, tokenBalance.getToken(), SelectableMappingKt.mapToSelectableBalance(tokenBalance));
                        if (selectableTokenItem != null) {
                            arrayList.add(selectableTokenItem);
                        }
                    }
                    withExcludedSelectedToken = WalletSelectTokenPresenter.this.withExcludedSelectedToken(arrayList);
                    ((WalletSelectTokenView) WalletSelectTokenPresenter.this.getViewState()).renderItems(withExcludedSelectedToken);
                } else if (result instanceof Result.Loading) {
                    ((WalletSelectTokenView) WalletSelectTokenPresenter.this.getViewState()).onLoadingState();
                } else if (result instanceof Result.Error) {
                    Result.Error error = (Result.Error) result;
                    if (error.getError().isNoConnectionStatus()) {
                        ((WalletSelectTokenView) WalletSelectTokenPresenter.this.getViewState()).onNoInternetErrorState();
                    } else {
                        ((WalletSelectTokenView) WalletSelectTokenPresenter.this.getViewState()).onUnexpectedErrorState();
                    }
                    resourceManager = WalletSelectTokenPresenter.this.resourceManager;
                    ((WalletSelectTokenView) WalletSelectTokenPresenter.this.getViewState()).showErrorToast(error, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.swap.token.WalletSelectTokenPresenter$loadInternalBalances$$inlined$subscribeWithErrorHandle$default$2
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

    private final void subscribeToQueryChanges() {
        Observable<String> observeOn = this.querySubject.debounce(500L, TimeUnit.MILLISECONDS).distinctUntilChanged().observeOn(this.schedulersProvider.mo716ui()).observeOn(this.schedulersProvider.mo717io());
        final Function1<String, ObservableSource<? extends Result<? extends List<? extends SelectableTokenItem>>>> function1 = new Function1<String, ObservableSource<? extends Result<? extends List<? extends SelectableTokenItem>>>>() { // from class: com.iMe.ui.wallet.swap.token.WalletSelectTokenPresenter$subscribeToQueryChanges$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Result<List<SelectableTokenItem>>> invoke(String newQuery) {
                List list;
                Observable searchObservable;
                Intrinsics.checkNotNullParameter(newQuery, "newQuery");
                WalletSelectTokenPresenter.this.query = newQuery;
                WalletSelectTokenPresenter.this.cursor = "";
                list = WalletSelectTokenPresenter.this.swapItems;
                list.clear();
                searchObservable = WalletSelectTokenPresenter.this.getSearchObservable();
                return searchObservable;
            }
        };
        Observable<R> switchMap = observeOn.switchMap(new Function() { // from class: com.iMe.ui.wallet.swap.token.WalletSelectTokenPresenter$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource subscribeToQueryChanges$lambda$9;
                subscribeToQueryChanges$lambda$9 = WalletSelectTokenPresenter.subscribeToQueryChanges$lambda$9(Function1.this, obj);
                return subscribeToQueryChanges$lambda$9;
            }
        });
        Intrinsics.checkNotNullExpressionValue(switchMap, "private fun subscribeToQ…     .autoDispose()\n    }");
        Disposable subscribe = SchedulersExtKt.scheduleIO(switchMap, this.schedulersProvider).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends List<? extends SelectableTokenItem>>, Unit>() { // from class: com.iMe.ui.wallet.swap.token.WalletSelectTokenPresenter$subscribeToQueryChanges$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends SelectableTokenItem>> result) {
                m1627invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1627invoke(Result<? extends List<? extends SelectableTokenItem>> it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends List<? extends SelectableTokenItem>> result = it;
                if (result instanceof Result.Success) {
                    WalletSelectTokenPresenter.this.onSwapTokensSuccess((List) ((Result.Success) result).getData(), false);
                } else if (result instanceof Result.Loading) {
                    ((WalletSelectTokenView) WalletSelectTokenPresenter.this.getViewState()).onLoadingState();
                } else if (result instanceof Result.Error) {
                    if (((Result.Error) result).getError().isNoConnectionStatus()) {
                        ((WalletSelectTokenView) WalletSelectTokenPresenter.this.getViewState()).onNoInternetErrorState();
                    } else {
                        ((WalletSelectTokenView) WalletSelectTokenPresenter.this.getViewState()).onUnexpectedErrorState();
                    }
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.swap.token.WalletSelectTokenPresenter$subscribeToQueryChanges$$inlined$subscribeWithErrorHandle$default$2
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

    public static final ObservableSource subscribeToQueryChanges$lambda$9(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    public final Observable<Result<List<SelectableTokenItem>>> getSearchObservable() {
        final boolean z = getSwapDirection() == TransactionDirection.f459IN;
        SwapInteractor swapInteractor = this.swapInteractor;
        SwapProtocol swapProtocol = getSwapProtocol();
        TransactionDirection swapDirection = getSwapDirection();
        String str = this.networkId;
        String str2 = this.query;
        String str3 = str2.length() == 0 ? null : str2;
        String str4 = this.cursor;
        Observable<R> flatMap = swapInteractor.getAvailableTokensToSwap(swapProtocol, swapDirection, str, str3, str4.length() == 0 ? null : str4, z ? 20 : null).flatMap(new Function(new Function1<Result<? extends CursoredData<TokenDetailed>>, ObservableSource<? extends Result<? extends List<? extends TokenBalance>>>>() { // from class: com.iMe.ui.wallet.swap.token.WalletSelectTokenPresenter$getSearchObservable$$inlined$flatMapSuccess$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Result<? extends List<? extends TokenBalance>>> invoke(Result<? extends CursoredData<TokenDetailed>> result) {
                WalletInteractor walletInteractor;
                int collectionSizeOrDefault;
                String str5;
                int collectionSizeOrDefault2;
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    if (result instanceof Result.Error) {
                        Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                        Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess");
                        return Observable.just(error$default);
                    }
                    return Observable.empty();
                }
                WalletSelectTokenPresenter walletSelectTokenPresenter = WalletSelectTokenPresenter.this;
                CursoredData<TokenDetailed> data = result.getData();
                String cursor = data != null ? data.getCursor() : null;
                if (cursor == null) {
                    cursor = "";
                }
                walletSelectTokenPresenter.cursor = cursor;
                CursoredData<TokenDetailed> data2 = result.getData();
                List<TokenDetailed> data3 = data2 != null ? data2.getData() : null;
                if (data3 == null) {
                    data3 = CollectionsKt__CollectionsKt.emptyList();
                }
                if (z) {
                    collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(data3, 10);
                    ArrayList arrayList = new ArrayList(collectionSizeOrDefault2);
                    for (TokenDetailed tokenDetailed : data3) {
                        arrayList.add(TokenBalance.Companion.createEmptyBalanceFor(tokenDetailed));
                    }
                    Observable just = Observable.just(Result.Companion.success(arrayList));
                    Intrinsics.checkNotNullExpressionValue(just, "just(this)");
                    return just;
                }
                walletInteractor = WalletSelectTokenPresenter.this.walletInteractor;
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(data3, 10);
                ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
                for (TokenDetailed tokenDetailed2 : data3) {
                    arrayList2.add(TokenExtKt.toIndexedToken(tokenDetailed2));
                }
                str5 = WalletSelectTokenPresenter.this.networkId;
                return walletInteractor.getTokensBalances(arrayList2, true, str5);
            }
        }) { // from class: com.iMe.ui.wallet.swap.token.WalletSelectTokenPresenter$inlined$sam$i$io_reactivex_functions_Function$0
            private final /* synthetic */ Function1 function;

            {
                Intrinsics.checkNotNullParameter(function, "function");
                this.function = function;
            }

            @Override // io.reactivex.functions.Function
            public final /* synthetic */ Object apply(Object obj) {
                return this.function.invoke(obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable flatMap2 = flatMap.flatMap(new Function(new Function1<Result<? extends List<? extends TokenBalance>>, ObservableSource<? extends Result<? extends List<? extends SelectableTokenItem>>>>() { // from class: com.iMe.ui.wallet.swap.token.WalletSelectTokenPresenter$getSearchObservable$$inlined$flatMapSuccess$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Result<? extends List<? extends SelectableTokenItem>>> invoke(Result<? extends List<? extends TokenBalance>> result) {
                int collectionSizeOrDefault;
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    if (result instanceof Result.Error) {
                        Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                        Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess");
                        return Observable.just(error$default);
                    }
                    return Observable.empty();
                }
                List<? extends TokenBalance> data = result.getData();
                if (data == null) {
                    data = CollectionsKt__CollectionsKt.emptyList();
                }
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(data, 10);
                ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                for (TokenBalance tokenBalance : data) {
                    arrayList.add(new SelectableTokenItem(false, tokenBalance.getToken(), z ? null : SelectableMappingKt.mapToSelectableBalance(tokenBalance)));
                }
                Observable just = Observable.just(Result.Companion.success(arrayList));
                Intrinsics.checkNotNullExpressionValue(just, "just(this)");
                return just;
            }
        }) { // from class: com.iMe.ui.wallet.swap.token.WalletSelectTokenPresenter$inlined$sam$i$io_reactivex_functions_Function$0
            private final /* synthetic */ Function1 function;

            {
                Intrinsics.checkNotNullParameter(function, "function");
                this.function = function;
            }

            @Override // io.reactivex.functions.Function
            public final /* synthetic */ Object apply(Object obj) {
                return this.function.invoke(obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap2, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable<Result<List<SelectableTokenItem>>> startWith = flatMap2.startWith((Observable) Result.Companion.loading$default(Result.Companion, null, 1, null));
        Intrinsics.checkNotNullExpressionValue(startWith, "swapInteractor\n         …artWith(Result.loading())");
        return startWith;
    }

    public final void onSwapTokensSuccess(List<SelectableTokenItem> list, boolean z) {
        List mutableList;
        if (!list.isEmpty()) {
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) list);
            final Function1<SelectableTokenItem, Boolean> function1 = new Function1<SelectableTokenItem, Boolean>() { // from class: com.iMe.ui.wallet.swap.token.WalletSelectTokenPresenter$onSwapTokensSuccess$filteredItems$1$1
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Boolean invoke(SelectableTokenItem it) {
                    TokenDetailed ignoredToken;
                    Intrinsics.checkNotNullParameter(it, "it");
                    TokenDetailed token = it.getToken();
                    ignoredToken = WalletSelectTokenPresenter.this.getIgnoredToken();
                    return Boolean.valueOf(Intrinsics.areEqual(token, ignoredToken));
                }
            };
            Collection$EL.removeIf(mutableList, new Predicate() { // from class: com.iMe.ui.wallet.swap.token.WalletSelectTokenPresenter$$ExternalSyntheticLambda1
                @Override // p033j$.util.function.Predicate
                public /* synthetic */ Predicate and(Predicate predicate) {
                    return Predicate.CC.$default$and(this, predicate);
                }

                @Override // p033j$.util.function.Predicate
                public /* synthetic */ Predicate negate() {
                    return Predicate.CC.$default$negate(this);
                }

                @Override // p033j$.util.function.Predicate
                /* renamed from: or */
                public /* synthetic */ Predicate mo25or(Predicate predicate) {
                    return Predicate.CC.$default$or(this, predicate);
                }

                @Override // p033j$.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean onSwapTokensSuccess$lambda$19$lambda$18;
                    onSwapTokensSuccess$lambda$19$lambda$18 = WalletSelectTokenPresenter.onSwapTokensSuccess$lambda$19$lambda$18(Function1.this, obj);
                    return onSwapTokensSuccess$lambda$19$lambda$18;
                }
            });
            this.swapItems.addAll(mutableList);
            if (z) {
                ((WalletSelectTokenView) getViewState()).onLoadMoreItems(this.swapItems);
            } else {
                ((WalletSelectTokenView) getViewState()).renderItems(this.swapItems);
            }
        } else if (!z) {
            ((WalletSelectTokenView) getViewState()).onEmptyState();
        }
        if (this.cursor.length() == 0) {
            ((WalletSelectTokenView) getViewState()).onLoadMoreComplete();
        }
    }

    public static final boolean onSwapTokensSuccess$lambda$19$lambda$18(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Boolean) tmp0.invoke(obj)).booleanValue();
    }

    /* compiled from: WalletSelectTokenPresenter.kt */
    /* renamed from: com.iMe.ui.wallet.swap.token.WalletSelectTokenPresenter$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public final List<SelectableTokenItem> withExcludedSelectedToken(List<SelectableTokenItem> list) {
        List sortedWith;
        List<SelectableTokenItem> sortedWith2;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            String address = ((SelectableTokenItem) obj).getToken().getAddress();
            TokenDetailed tokenDetailed = this.selectedToken;
            if (!Intrinsics.areEqual(address, tokenDetailed != null ? tokenDetailed.getAddress() : null)) {
                arrayList.add(obj);
            }
        }
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: com.iMe.ui.wallet.swap.token.WalletSelectTokenPresenter$withExcludedSelectedToken$$inlined$sortedBy$1
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                int compareValues;
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(((SelectableTokenItem) t).getToken().getName(), ((SelectableTokenItem) t2).getToken().getName());
                return compareValues;
            }
        });
        sortedWith2 = CollectionsKt___CollectionsKt.sortedWith(sortedWith, new Comparator() { // from class: com.iMe.ui.wallet.swap.token.WalletSelectTokenPresenter$withExcludedSelectedToken$$inlined$sortedByDescending$1
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                int compareValues;
                String ticker = ((SelectableTokenItem) t2).getToken().getTicker();
                TokenCode tokenCode = TokenCode.LIME;
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(Boolean.valueOf(Intrinsics.areEqual(ticker, tokenCode.name())), Boolean.valueOf(Intrinsics.areEqual(((SelectableTokenItem) t).getToken().getTicker(), tokenCode.name())));
                return compareValues;
            }
        });
        return sortedWith2;
    }
}
