package com.smedialink.p031ui.wallet.swap.token;

import com.smedialink.mapper.wallet.select.SelectableMappingKt;
import com.smedialink.model.wallet.select.SelectableToken;
import com.smedialink.model.wallet.select.SelectableTokenBalance;
import com.smedialink.model.wallet.select.SelectableTokenItem;
import com.smedialink.model.wallet.select.SelectableType;
import com.smedialink.p031ui.base.mvp.base.BasePresenter;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.data.utils.extentions.NumberExtKt;
import com.smedialink.storage.domain.interactor.binancepay.BinanceInternalInteractor;
import com.smedialink.storage.domain.interactor.wallet.WalletInteractor;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.binancepay.BinanceTokenBalanceInfo;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.wallet.token.TokenBalance;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import moxy.InjectViewState;
import timber.log.Timber;
/* compiled from: WalletSelectTokenPresenter.kt */
@InjectViewState
/* renamed from: com.smedialink.ui.wallet.swap.token.WalletSelectTokenPresenter */
/* loaded from: classes3.dex */
public final class WalletSelectTokenPresenter extends BasePresenter<WalletSelectTokenView> {
    private final BinanceInternalInteractor binanceInternalInteractor;
    private final NetworkType networkType;
    private final boolean onlyPositiveBalance;
    private final ResourceManager resourceManager;
    private final SchedulersProvider schedulersProvider;
    private final SelectableToken selectedToken;
    private final List<SelectableToken> supportedTokens;
    private final Lazy supportedTokensItemsMap$delegate;
    private final SelectableType type;
    private final WalletInteractor walletInteractor;

    /* compiled from: WalletSelectTokenPresenter.kt */
    /* renamed from: com.smedialink.ui.wallet.swap.token.WalletSelectTokenPresenter$WhenMappings */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SelectableType.values().length];
            iArr[SelectableType.INTERNAL.ordinal()] = 1;
            iArr[SelectableType.BINANCE.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public WalletSelectTokenPresenter(SelectableType type, SelectableToken selectableToken, List<? extends SelectableToken> supportedTokens, NetworkType networkType, boolean z, WalletInteractor walletInteractor, BinanceInternalInteractor binanceInternalInteractor, SchedulersProvider schedulersProvider, ResourceManager resourceManager) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(supportedTokens, "supportedTokens");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Intrinsics.checkNotNullParameter(walletInteractor, "walletInteractor");
        Intrinsics.checkNotNullParameter(binanceInternalInteractor, "binanceInternalInteractor");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.type = type;
        this.selectedToken = selectableToken;
        this.supportedTokens = supportedTokens;
        this.networkType = networkType;
        this.onlyPositiveBalance = z;
        this.walletInteractor = walletInteractor;
        this.binanceInternalInteractor = binanceInternalInteractor;
        this.schedulersProvider = schedulersProvider;
        this.resourceManager = resourceManager;
        lazy = LazyKt__LazyJVMKt.lazy(new WalletSelectTokenPresenter$supportedTokensItemsMap$2(this));
        this.supportedTokensItemsMap$delegate = lazy;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Map<String, SelectableTokenItem> getSupportedTokensItemsMap() {
        return (Map) this.supportedTokensItemsMap$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        loadBalances();
    }

    private final void loadBalances() {
        int i = WhenMappings.$EnumSwitchMapping$0[this.type.ordinal()];
        if (i == 1) {
            loadInternalBalances();
        } else if (i != 2) {
        } else {
            loadBinanceBalances();
        }
    }

    private final void loadBinanceBalances() {
        Observable<Result<List<BinanceTokenBalanceInfo>>> observeOn = this.binanceInternalInteractor.getUserBalance().observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "binanceInternalInteracto…(schedulersProvider.ui())");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.swap.token.WalletSelectTokenPresenter$loadBinanceBalances$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                Map supportedTokensItemsMap;
                List mutableList;
                List<SelectableTokenItem> withExcludedSelectedToken;
                ResourceManager resourceManager;
                int collectionSizeOrDefault;
                int mapCapacity;
                int coerceAtLeast;
                Map supportedTokensItemsMap2;
                List<SelectableTokenItem> withExcludedSelectedToken2;
                boolean z;
                ResourceManager resourceManager2;
                SelectableTokenBalance mapToSelectable;
                ResourceManager resourceManager3;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
                if (result instanceof Result.Success) {
                    Result.Success success = (Result.Success) result;
                    if (!((Collection) success.getData()).isEmpty()) {
                        Iterable iterable = (Iterable) success.getData();
                        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(iterable, 10);
                        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault);
                        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
                        LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
                        for (T t : iterable) {
                            linkedHashMap.put(((BinanceTokenBalanceInfo) t).getAsset(), t);
                        }
                        supportedTokensItemsMap2 = WalletSelectTokenPresenter.this.getSupportedTokensItemsMap();
                        Collection<SelectableTokenItem> values = supportedTokensItemsMap2.values();
                        ArrayList arrayList = new ArrayList();
                        for (SelectableTokenItem selectableTokenItem : values) {
                            BinanceTokenBalanceInfo binanceTokenBalanceInfo = (BinanceTokenBalanceInfo) linkedHashMap.get(selectableTokenItem.getToken().getId());
                            z = WalletSelectTokenPresenter.this.onlyPositiveBalance;
                            SelectableTokenItem selectableTokenItem2 = null;
                            if (!z) {
                                if (binanceTokenBalanceInfo == null) {
                                    mapToSelectable = null;
                                } else {
                                    resourceManager2 = WalletSelectTokenPresenter.this.resourceManager;
                                    mapToSelectable = SelectableMappingKt.mapToSelectable(binanceTokenBalanceInfo, resourceManager2);
                                }
                                selectableTokenItem2 = SelectableTokenItem.copy$default(selectableTokenItem, null, mapToSelectable, 1, null);
                            } else if (binanceTokenBalanceInfo != null && !NumberExtKt.isZero(Double.valueOf(binanceTokenBalanceInfo.getCombined().getTotal()))) {
                                resourceManager3 = WalletSelectTokenPresenter.this.resourceManager;
                                selectableTokenItem2 = SelectableTokenItem.copy$default(selectableTokenItem, null, SelectableMappingKt.mapToSelectable(binanceTokenBalanceInfo, resourceManager3), 1, null);
                            }
                            if (selectableTokenItem2 != null) {
                                arrayList.add(selectableTokenItem2);
                            }
                        }
                        withExcludedSelectedToken2 = WalletSelectTokenPresenter.this.withExcludedSelectedToken(arrayList);
                        ((WalletSelectTokenView) WalletSelectTokenPresenter.this.getViewState()).onTokensLoaded(withExcludedSelectedToken2);
                    }
                } else if (result instanceof Result.Error) {
                    WalletSelectTokenPresenter walletSelectTokenPresenter = WalletSelectTokenPresenter.this;
                    supportedTokensItemsMap = walletSelectTokenPresenter.getSupportedTokensItemsMap();
                    mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) supportedTokensItemsMap.values());
                    withExcludedSelectedToken = walletSelectTokenPresenter.withExcludedSelectedToken(mutableList);
                    ((WalletSelectTokenView) WalletSelectTokenPresenter.this.getViewState()).onTokensLoaded(withExcludedSelectedToken);
                    ErrorModel error = ((Result.Error) result).getError();
                    resourceManager = WalletSelectTokenPresenter.this.resourceManager;
                    ((WalletSelectTokenView) WalletSelectTokenPresenter.this.getViewState()).showToast(error.getMessage(resourceManager));
                } else if (result instanceof Result.Loading) {
                    ((WalletSelectTokenView) WalletSelectTokenPresenter.this.getViewState()).onLoadingState();
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.wallet.swap.token.WalletSelectTokenPresenter$loadBinanceBalances$$inlined$subscribeWithErrorHandle$default$2
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

    private final void loadInternalBalances() {
        Observable<Result<List<TokenBalance>>> observeOn = this.walletInteractor.getWalletBalance(false, this.networkType).distinctUntilChanged().observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "walletInteractor\n       …(schedulersProvider.ui())");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.swap.token.WalletSelectTokenPresenter$loadInternalBalances$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                Map supportedTokensItemsMap;
                List mutableList;
                List<SelectableTokenItem> withExcludedSelectedToken;
                ResourceManager resourceManager;
                int collectionSizeOrDefault;
                int mapCapacity;
                int coerceAtLeast;
                Map supportedTokensItemsMap2;
                List<SelectableTokenItem> withExcludedSelectedToken2;
                boolean z;
                ResourceManager resourceManager2;
                SelectableTokenBalance mapToSelectable;
                ResourceManager resourceManager3;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
                if (result instanceof Result.Success) {
                    Result.Success success = (Result.Success) result;
                    if (!((Collection) success.getData()).isEmpty()) {
                        Iterable iterable = (Iterable) success.getData();
                        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(iterable, 10);
                        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault);
                        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
                        LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
                        for (T t : iterable) {
                            linkedHashMap.put(((TokenBalance) t).getCode().getName(), t);
                        }
                        supportedTokensItemsMap2 = WalletSelectTokenPresenter.this.getSupportedTokensItemsMap();
                        Collection<SelectableTokenItem> values = supportedTokensItemsMap2.values();
                        ArrayList arrayList = new ArrayList();
                        for (SelectableTokenItem selectableTokenItem : values) {
                            TokenBalance tokenBalance = (TokenBalance) linkedHashMap.get(selectableTokenItem.getToken().getId());
                            z = WalletSelectTokenPresenter.this.onlyPositiveBalance;
                            SelectableTokenItem selectableTokenItem2 = null;
                            if (!z) {
                                if (tokenBalance == null) {
                                    mapToSelectable = null;
                                } else {
                                    resourceManager2 = WalletSelectTokenPresenter.this.resourceManager;
                                    mapToSelectable = SelectableMappingKt.mapToSelectable(tokenBalance, resourceManager2);
                                }
                                selectableTokenItem2 = SelectableTokenItem.copy$default(selectableTokenItem, null, mapToSelectable, 1, null);
                            } else if (tokenBalance != null && !NumberExtKt.isZero(Float.valueOf(tokenBalance.getTotalInDollars()))) {
                                resourceManager3 = WalletSelectTokenPresenter.this.resourceManager;
                                selectableTokenItem2 = SelectableTokenItem.copy$default(selectableTokenItem, null, SelectableMappingKt.mapToSelectable(tokenBalance, resourceManager3), 1, null);
                            }
                            if (selectableTokenItem2 != null) {
                                arrayList.add(selectableTokenItem2);
                            }
                        }
                        withExcludedSelectedToken2 = WalletSelectTokenPresenter.this.withExcludedSelectedToken(arrayList);
                        ((WalletSelectTokenView) WalletSelectTokenPresenter.this.getViewState()).onTokensLoaded(withExcludedSelectedToken2);
                    }
                } else if (result instanceof Result.Error) {
                    WalletSelectTokenPresenter walletSelectTokenPresenter = WalletSelectTokenPresenter.this;
                    supportedTokensItemsMap = walletSelectTokenPresenter.getSupportedTokensItemsMap();
                    mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) supportedTokensItemsMap.values());
                    withExcludedSelectedToken = walletSelectTokenPresenter.withExcludedSelectedToken(mutableList);
                    ((WalletSelectTokenView) WalletSelectTokenPresenter.this.getViewState()).onTokensLoaded(withExcludedSelectedToken);
                    ErrorModel error = ((Result.Error) result).getError();
                    resourceManager = WalletSelectTokenPresenter.this.resourceManager;
                    ((WalletSelectTokenView) WalletSelectTokenPresenter.this.getViewState()).showToast(error.getMessage(resourceManager));
                } else if (result instanceof Result.Loading) {
                    ((WalletSelectTokenView) WalletSelectTokenPresenter.this.getViewState()).onLoadingState();
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.wallet.swap.token.WalletSelectTokenPresenter$loadInternalBalances$$inlined$subscribeWithErrorHandle$default$2
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
    public final List<SelectableTokenItem> withExcludedSelectedToken(List<SelectableTokenItem> list) {
        List sortedWith;
        List<SelectableTokenItem> sortedWith2;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            String id = ((SelectableTokenItem) obj).getToken().getId();
            SelectableToken selectableToken = this.selectedToken;
            if (!Intrinsics.areEqual(id, selectableToken == null ? null : selectableToken.getId())) {
                arrayList.add(obj);
            }
        }
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: com.smedialink.ui.wallet.swap.token.WalletSelectTokenPresenter$withExcludedSelectedToken$$inlined$sortedBy$1
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                int compareValues;
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(((SelectableTokenItem) t).getToken().getName(), ((SelectableTokenItem) t2).getToken().getName());
                return compareValues;
            }
        });
        sortedWith2 = CollectionsKt___CollectionsKt.sortedWith(sortedWith, new Comparator() { // from class: com.smedialink.ui.wallet.swap.token.WalletSelectTokenPresenter$withExcludedSelectedToken$$inlined$sortedByDescending$1
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                int compareValues;
                TokenCode.Companion companion = TokenCode.Companion;
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(Boolean.valueOf(companion.map(((SelectableTokenItem) t2).getToken().getTicker()).isLime()), Boolean.valueOf(companion.map(((SelectableTokenItem) t).getToken().getTicker()).isLime()));
                return compareValues;
            }
        });
        return sortedWith2;
    }
}
