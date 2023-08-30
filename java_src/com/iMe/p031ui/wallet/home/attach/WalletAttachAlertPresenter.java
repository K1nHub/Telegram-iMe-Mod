package com.iMe.p031ui.wallet.home.attach;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.manager.crypto.recipient.CryptoRecipientManager;
import com.iMe.manager.crypto.recipient.CryptoRecipientView;
import com.iMe.mapper.transaction.TransactionUiMappingKt;
import com.iMe.mapper.wallet.NetworkUiMappingKt;
import com.iMe.model.wallet.crypto.NetworkItem;
import com.iMe.model.wallet.home.HeaderItem;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.storage.data.locale.prefs.model.TokenDisplaySettings;
import com.iMe.storage.data.network.handlers.impl.ApiErrorHandler;
import com.iMe.storage.data.utils.crypto.NetworksHelper;
import com.iMe.storage.domain.interactor.wallet.WalletInteractor;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.model.wallet.token.Token;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.model.wallet.transaction.Transaction;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.StringExtKt;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import moxy.InjectViewState;
/* compiled from: WalletAttachAlertPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.home.attach.WalletAttachAlertPresenter */
/* loaded from: classes4.dex */
public final class WalletAttachAlertPresenter extends BasePresenter<WalletAttachAlertView> {
    private final HashMap<String, List<Transaction>> cachedTransactions;
    private final CryptoAccessManager cryptoAccessManager;
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final CryptoRecipientManager cryptoRecipientManager;
    private final ResourceManager resourceManager;
    private final SchedulersProvider schedulersProvider;
    private TokenDetailed selectedToken;
    private final WalletInteractor walletInteractor;

    public void loadAddressInfoById(String recipient, BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(recipient, "recipient");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        this.cryptoRecipientManager.loadAddressInfoById(recipient, blockchainType);
    }

    public WalletAttachAlertPresenter(WalletInteractor walletInteractor, CryptoAccessManager cryptoAccessManager, CryptoPreferenceHelper cryptoPreferenceHelper, SchedulersProvider schedulersProvider, ResourceManager resourceManager, CryptoRecipientManager cryptoRecipientManager) {
        Intrinsics.checkNotNullParameter(walletInteractor, "walletInteractor");
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(cryptoRecipientManager, "cryptoRecipientManager");
        this.walletInteractor = walletInteractor;
        this.cryptoAccessManager = cryptoAccessManager;
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.schedulersProvider = schedulersProvider;
        this.resourceManager = resourceManager;
        this.cryptoRecipientManager = cryptoRecipientManager;
        this.cachedTransactions = new HashMap<>();
    }

    private final Network getCurrentNetwork() {
        return this.cryptoPreferenceHelper.getNetwork();
    }

    public final void startChooseNetworkDialog() {
        List<? extends BlockchainType> listOf;
        List<BlockchainType> createdWalletsBlockchains = this.cryptoAccessManager.getCreatedWalletsBlockchains();
        if (!this.cryptoAccessManager.isCurrentBlockchainWalletCreated()) {
            CryptoPreferenceHelper cryptoPreferenceHelper = this.cryptoPreferenceHelper;
            NetworksHelper networksHelper = NetworksHelper.INSTANCE;
            listOf = CollectionsKt__CollectionsJVMKt.listOf(CollectionsKt.first((List<? extends Object>) createdWalletsBlockchains));
            cryptoPreferenceHelper.setNetwork((Network) CollectionsKt.first((List<? extends Object>) networksHelper.getNetworksByBlockchains(listOf)));
        }
        ((WalletAttachAlertView) getViewState()).showChooseNetworkDialog(NetworkUiMappingKt.mapToUI(this.cryptoPreferenceHelper.getNetwork()), NetworkUiMappingKt.mapToUI(NetworksHelper.INSTANCE.getNetworksByBlockchains(createdWalletsBlockchains)));
    }

    public final void onNetworkSelected(NetworkItem.Crypto crypto) {
        Network mapToDomain;
        CryptoPreferenceHelper cryptoPreferenceHelper = this.cryptoPreferenceHelper;
        if (crypto == null || (mapToDomain = NetworkUiMappingKt.mapToDomain(crypto)) == null) {
            return;
        }
        cryptoPreferenceHelper.setNetwork(mapToDomain);
        resetCache();
        getWalletData(true);
    }

    public final NetworkItem getCurrentNetworkItem() {
        return NetworkUiMappingKt.mapToUI(getCurrentNetwork());
    }

    public final void selectBalance(TokenBalance balance) {
        Intrinsics.checkNotNullParameter(balance, "balance");
        TokenDetailed token = balance.getToken();
        getWalletTransactions(token);
        this.selectedToken = token;
    }

    public final void loadAddressInfoById(String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        loadAddressInfoById(userId, getCurrentNetwork().getBlockchainType());
    }

    public static /* synthetic */ void getWalletData$default(WalletAttachAlertPresenter walletAttachAlertPresenter, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        walletAttachAlertPresenter.getWalletData(z);
    }

    public final void getWalletData(boolean z) {
        getWalletBalance(z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        super.onFirstViewAttach();
        CryptoRecipientManager cryptoRecipientManager = this.cryptoRecipientManager;
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        cryptoRecipientManager.attachViewState((CryptoRecipientView) viewState);
        getWalletData$default(this, false, 1, null);
    }

    @Override // com.iMe.p031ui.base.mvp.base.BasePresenter, moxy.MvpPresenter
    public void onDestroy() {
        this.cryptoRecipientManager.onDetachViewState();
        super.onDestroy();
    }

    private final void resetCache() {
        this.cachedTransactions.clear();
    }

    private final void getWalletBalance(boolean z) {
        Observable observeOn = WalletInteractor.getWalletBalance$default(this.walletInteractor, z, null, 2, null).distinctUntilChanged().observeOn(this.schedulersProvider.mo716ui());
        final Function1<Result<? extends List<? extends TokenBalance>>, Unit> function1 = new Function1<Result<? extends List<? extends TokenBalance>>, Unit>() { // from class: com.iMe.ui.wallet.home.attach.WalletAttachAlertPresenter$getWalletBalance$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends TokenBalance>> result) {
                invoke2((Result<? extends List<TokenBalance>>) result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Result<? extends List<TokenBalance>> result) {
                ResourceManager resourceManager;
                List<TokenBalance> configureTokens;
                if (result instanceof Result.Success) {
                    configureTokens = WalletAttachAlertPresenter.this.configureTokens((List) ((Result.Success) result).getData());
                    ((WalletAttachAlertView) WalletAttachAlertPresenter.this.getViewState()).showBalances(configureTokens);
                    if (!configureTokens.isEmpty()) {
                        WalletAttachAlertPresenter.this.selectBalance((TokenBalance) CollectionsKt.first((List<? extends Object>) configureTokens));
                    }
                } else if (result instanceof Result.Error) {
                    Intrinsics.checkNotNullExpressionValue(result, "result");
                    resourceManager = WalletAttachAlertPresenter.this.resourceManager;
                    ((WalletAttachAlertView) WalletAttachAlertPresenter.this.getViewState()).showErrorToast((Result.Error) result, resourceManager);
                }
            }
        };
        Consumer consumer = new Consumer() { // from class: com.iMe.ui.wallet.home.attach.WalletAttachAlertPresenter$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                WalletAttachAlertPresenter.getWalletBalance$lambda$1(Function1.this, obj);
            }
        };
        final Function1<Throwable, Unit> function12 = new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.home.attach.WalletAttachAlertPresenter$getWalletBalance$2
            /* JADX INFO: Access modifiers changed from: package-private */
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
                WalletAttachAlertView walletAttachAlertView = (WalletAttachAlertView) WalletAttachAlertPresenter.this.getViewState();
                String message = th.getMessage();
                if (message == null) {
                    message = "";
                }
                walletAttachAlertView.showToast(message);
            }
        };
        Disposable subscribe = observeOn.subscribe(consumer, new Consumer() { // from class: com.iMe.ui.wallet.home.attach.WalletAttachAlertPresenter$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                WalletAttachAlertPresenter.getWalletBalance$lambda$2(Function1.this, obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "private fun getWalletBal…     .autoDispose()\n    }");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getWalletBalance$lambda$1(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getWalletBalance$lambda$2(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<TokenBalance> configureTokens(List<TokenBalance> list) {
        int collectionSizeOrDefault;
        int mapCapacity;
        int coerceAtLeast;
        CryptoPreferenceHelper cryptoPreferenceHelper = this.cryptoPreferenceHelper;
        List<TokenDisplaySettings.Crypto> tokensSettings = cryptoPreferenceHelper.getTokensSettings(cryptoPreferenceHelper.getNetworkId());
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (!this.cryptoPreferenceHelper.getOnlyPositiveTokens() || ((TokenBalance) obj).getTotal() > 0.0d) {
                arrayList.add(obj);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault);
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
        LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
        for (Object obj2 : arrayList) {
            linkedHashMap.put(((TokenBalance) obj2).getToken().getAddress(), obj2);
        }
        ArrayList<TokenDisplaySettings.Crypto> arrayList2 = new ArrayList();
        for (Object obj3 : tokensSettings) {
            if (((TokenDisplaySettings.Crypto) obj3).isVisible()) {
                arrayList2.add(obj3);
            }
        }
        ArrayList arrayList3 = new ArrayList();
        for (TokenDisplaySettings.Crypto crypto : arrayList2) {
            TokenBalance tokenBalance = (TokenBalance) linkedHashMap.get(crypto.getTokenAddress());
            if (tokenBalance != null) {
                arrayList3.add(tokenBalance);
            }
        }
        return arrayList3.isEmpty() ? list : arrayList3;
    }

    private final void getWalletTransactions(final TokenDetailed tokenDetailed) {
        Observable just = Observable.just(Boolean.TRUE);
        final Function1<Boolean, ObservableSource<? extends Result<? extends List<? extends Transaction>>>> function1 = new Function1<Boolean, ObservableSource<? extends Result<? extends List<? extends Transaction>>>>() { // from class: com.iMe.ui.wallet.home.attach.WalletAttachAlertPresenter$getWalletTransactions$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Result<List<Transaction>>> invoke(Boolean it) {
                HashMap hashMap;
                WalletInteractor walletInteractor;
                Result success;
                Intrinsics.checkNotNullParameter(it, "it");
                hashMap = WalletAttachAlertPresenter.this.cachedTransactions;
                List list = (List) hashMap.get(tokenDetailed.getTicker());
                if (list != null && (success = Result.Companion.success(list)) != null) {
                    Observable just2 = Observable.just(success);
                    Intrinsics.checkNotNullExpressionValue(just2, "just(this)");
                    if (just2 != null) {
                        return just2;
                    }
                }
                walletInteractor = WalletAttachAlertPresenter.this.walletInteractor;
                return WalletInteractor.getWalletTransactions$default(walletInteractor, false, null, new Token(tokenDetailed.getAddress(), tokenDetailed.getNetworkId()), 0, null, 27, null);
            }
        };
        Observable observeOn = just.switchMap(new Function() { // from class: com.iMe.ui.wallet.home.attach.WalletAttachAlertPresenter$$ExternalSyntheticLambda4
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource walletTransactions$lambda$8;
                walletTransactions$lambda$8 = WalletAttachAlertPresenter.getWalletTransactions$lambda$8(Function1.this, obj);
                return walletTransactions$lambda$8;
            }
        }).distinctUntilChanged().observeOn(this.schedulersProvider.mo716ui());
        final Function1<Result<? extends List<? extends Transaction>>, Unit> function12 = new Function1<Result<? extends List<? extends Transaction>>, Unit>() { // from class: com.iMe.ui.wallet.home.attach.WalletAttachAlertPresenter$getWalletTransactions$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends Transaction>> result) {
                invoke2(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Result<? extends List<? extends Transaction>> result) {
                ResourceManager resourceManager;
                HashMap hashMap;
                List mutableList;
                List<BaseNode> mapTransactionsToGroups;
                if (result instanceof Result.Success) {
                    hashMap = WalletAttachAlertPresenter.this.cachedTransactions;
                    String ticker = tokenDetailed.getTicker();
                    Result.Success success = (Result.Success) result;
                    mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) ((Collection) success.getData()));
                    hashMap.put(ticker, mutableList);
                    mapTransactionsToGroups = WalletAttachAlertPresenter.this.mapTransactionsToGroups((List) success.getData());
                    if (mapTransactionsToGroups.isEmpty()) {
                        ((WalletAttachAlertView) WalletAttachAlertPresenter.this.getViewState()).onEmptyState();
                    } else {
                        ((WalletAttachAlertView) WalletAttachAlertPresenter.this.getViewState()).showTransactions(mapTransactionsToGroups);
                    }
                } else if (result instanceof Result.Error) {
                    Result.Error error = (Result.Error) result;
                    if (error.getError().getStatus() == ApiErrorHandler.ErrorStatus.NO_CONNECTION) {
                        ((WalletAttachAlertView) WalletAttachAlertPresenter.this.getViewState()).onNoInternetErrorState();
                    } else {
                        ((WalletAttachAlertView) WalletAttachAlertPresenter.this.getViewState()).onUnexpectedErrorState();
                    }
                    Intrinsics.checkNotNullExpressionValue(result, "result");
                    resourceManager = WalletAttachAlertPresenter.this.resourceManager;
                    ((WalletAttachAlertView) WalletAttachAlertPresenter.this.getViewState()).showErrorToast(error, resourceManager);
                } else if (result instanceof Result.Loading) {
                    ((WalletAttachAlertView) WalletAttachAlertPresenter.this.getViewState()).onLoadingState();
                }
            }
        };
        Consumer consumer = new Consumer() { // from class: com.iMe.ui.wallet.home.attach.WalletAttachAlertPresenter$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                WalletAttachAlertPresenter.getWalletTransactions$lambda$9(Function1.this, obj);
            }
        };
        final Function1<Throwable, Unit> function13 = new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.home.attach.WalletAttachAlertPresenter$getWalletTransactions$3
            /* JADX INFO: Access modifiers changed from: package-private */
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
                ((WalletAttachAlertView) WalletAttachAlertPresenter.this.getViewState()).onUnexpectedErrorState();
                WalletAttachAlertView walletAttachAlertView = (WalletAttachAlertView) WalletAttachAlertPresenter.this.getViewState();
                String message = th.getMessage();
                if (message == null) {
                    message = "";
                }
                walletAttachAlertView.showToast(message);
            }
        };
        Disposable subscribe = observeOn.subscribe(consumer, new Consumer() { // from class: com.iMe.ui.wallet.home.attach.WalletAttachAlertPresenter$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                WalletAttachAlertPresenter.getWalletTransactions$lambda$10(Function1.this, obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "private fun getWalletTra…     .autoDispose()\n    }");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource getWalletTransactions$lambda$8(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getWalletTransactions$lambda$9(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getWalletTransactions$lambda$10(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<BaseNode> mapTransactionsToGroups(List<? extends Transaction> list) {
        List distinct;
        distinct = CollectionsKt___CollectionsKt.distinct(list);
        ArrayList arrayList = new ArrayList();
        Iterator it = distinct.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            String address = ((Transaction) next).getToken().getAddress();
            TokenDetailed tokenDetailed = this.selectedToken;
            if (Intrinsics.areEqual(address, tokenDetailed != null ? tokenDetailed.getAddress() : null)) {
                arrayList.add(next);
            }
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : arrayList) {
            String formatISODate$default = StringExtKt.formatISODate$default(((Transaction) obj).getCreatedAt(), null, 1, null);
            Object obj2 = linkedHashMap.get(formatISODate$default);
            if (obj2 == null) {
                obj2 = new ArrayList();
                linkedHashMap.put(formatISODate$default, obj2);
            }
            ((List) obj2).add(obj);
        }
        ArrayList arrayList2 = new ArrayList();
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            arrayList2.add(new HeaderItem((String) entry.getKey()));
            for (Transaction transaction : (List) entry.getValue()) {
                arrayList2.add(TransactionUiMappingKt.mapToUI(transaction));
            }
        }
        return arrayList2;
    }
}
