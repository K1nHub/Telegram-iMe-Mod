package com.iMe.p031ui.wallet.swap.token;

import com.iMe.model.wallet.select.SelectableTokenItem;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.p031ui.wallet.swap.token.WalletSelectTokenFragment;
import com.iMe.storage.domain.interactor.binancepay.BinanceInternalInteractor;
import com.iMe.storage.domain.interactor.crypto.swap.SwapInteractor;
import com.iMe.storage.domain.interactor.wallet.WalletInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.binancepay.BinanceTokenBalanceInfo;
import com.iMe.storage.domain.model.wallet.swap.SwapProtocol;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.storage.domain.model.wallet.token.TokenCode;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.model.wallet.transaction.TransactionDirection;
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
import java.util.List;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import moxy.InjectViewState;
import p033j$.util.Collection$EL;
import p033j$.util.function.Predicate;
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
        lazy = LazyKt__LazyJVMKt.lazy(new WalletSelectTokenPresenter$swapProtocol$2(this));
        this.swapProtocol$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new WalletSelectTokenPresenter$swapDirection$2(this));
        this.swapDirection$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new WalletSelectTokenPresenter$ignoredToken$2(this));
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

    public final void searchByQuery(boolean z) {
        boolean z2 = !z;
        if (z2) {
            if (this.cursor.length() == 0) {
                ((WalletSelectTokenView) getViewState()).onLoadMoreComplete();
                return;
            }
        }
        Observable<Result<List<SelectableTokenItem>>> observeOn = getSearchObservable().observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "getSearchObservable()\n  …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2451xb82e950c(this, z2, z)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2452xb82e950d(null)));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
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

    private final void loadBinanceBalances(List<TokenDetailed> list) {
        Observable<Result<List<BinanceTokenBalanceInfo>>> observeOn = this.binanceInternalInteractor.getUserBalance().observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "binanceInternalInteracto…(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2447xe8a4a06a(list, this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2448xe8a4a06b((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    private final void loadInternalBalances() {
        Observable<Result<List<TokenBalance>>> observeOn = this.walletInteractor.getWalletBalance(true, this.networkId).distinctUntilChanged().observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "walletInteractor\n       …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2449x58d117dd(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2450x58d117de((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    private final void subscribeToQueryChanges() {
        Observable<String> observeOn = this.querySubject.debounce(500L, TimeUnit.MILLISECONDS).distinctUntilChanged().observeOn(this.schedulersProvider.mo698ui()).observeOn(this.schedulersProvider.mo699io());
        final WalletSelectTokenPresenter$subscribeToQueryChanges$1 walletSelectTokenPresenter$subscribeToQueryChanges$1 = new WalletSelectTokenPresenter$subscribeToQueryChanges$1(this);
        Observable<R> switchMap = observeOn.switchMap(new Function() { // from class: com.iMe.ui.wallet.swap.token.WalletSelectTokenPresenter$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource subscribeToQueryChanges$lambda$9;
                subscribeToQueryChanges$lambda$9 = WalletSelectTokenPresenter.subscribeToQueryChanges$lambda$9(Function1.this, obj);
                return subscribeToQueryChanges$lambda$9;
            }
        });
        Intrinsics.checkNotNullExpressionValue(switchMap, "private fun subscribeToQ…     .autoDispose()\n    }");
        Disposable subscribe = SchedulersExtKt.scheduleIO(switchMap, this.schedulersProvider).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2453x50df3983(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2454x50df3984(null)));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public static final ObservableSource subscribeToQueryChanges$lambda$9(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    public final Observable<Result<List<SelectableTokenItem>>> getSearchObservable() {
        boolean z = getSwapDirection() == TransactionDirection.f446IN;
        SwapInteractor swapInteractor = this.swapInteractor;
        SwapProtocol swapProtocol = getSwapProtocol();
        TransactionDirection swapDirection = getSwapDirection();
        String str = this.networkId;
        String str2 = this.query;
        String str3 = str2.length() == 0 ? null : str2;
        String str4 = this.cursor;
        Observable<R> flatMap = swapInteractor.getAvailableTokensToSwap(swapProtocol, swapDirection, str, str3, str4.length() == 0 ? null : str4, z ? 20 : null).flatMap(new Function(new C2445xcdcae27(this, z)) { // from class: com.iMe.ui.wallet.swap.token.WalletSelectTokenPresenter$inlined$sam$i$io_reactivex_functions_Function$0
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
        Observable flatMap2 = flatMap.flatMap(new Function(new C2446xcdcae28(z)) { // from class: com.iMe.ui.wallet.swap.token.WalletSelectTokenPresenter$inlined$sam$i$io_reactivex_functions_Function$0
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
            final WalletSelectTokenPresenter$onSwapTokensSuccess$filteredItems$1$1 walletSelectTokenPresenter$onSwapTokensSuccess$filteredItems$1$1 = new WalletSelectTokenPresenter$onSwapTokensSuccess$filteredItems$1$1(this);
            Collection$EL.removeIf(mutableList, new Predicate() { // from class: com.iMe.ui.wallet.swap.token.WalletSelectTokenPresenter$$ExternalSyntheticLambda1
                @Override // p033j$.util.function.Predicate
                public /* synthetic */ Predicate and(Predicate predicate) {
                    return Objects.requireNonNull(predicate);
                }

                @Override // p033j$.util.function.Predicate
                public /* synthetic */ Predicate negate() {
                    return Predicate.CC.$default$negate(this);
                }

                @Override // p033j$.util.function.Predicate
                /* renamed from: or */
                public /* synthetic */ Predicate mo23or(Predicate predicate) {
                    return Objects.requireNonNull(predicate);
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
