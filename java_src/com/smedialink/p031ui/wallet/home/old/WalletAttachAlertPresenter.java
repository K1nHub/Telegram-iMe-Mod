package com.smedialink.p031ui.wallet.home.old;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.smedialink.manager.crypto.recipient.CryptoRecipientManager;
import com.smedialink.manager.crypto.recipient.CryptoRecipientView;
import com.smedialink.mapper.transaction.TransactionUiMappingKt;
import com.smedialink.model.wallet.home.HeaderItem;
import com.smedialink.p031ui.base.mvp.base.BasePresenter;
import com.smedialink.storage.data.locale.prefs.model.WalletCryptoTokensSettingsMetadata;
import com.smedialink.storage.data.locale.prefs.model.WalletCryptoTokensSettingsTokenState;
import com.smedialink.storage.data.network.handlers.impl.ApiErrorHandler;
import com.smedialink.storage.domain.interactor.wallet.WalletInteractor;
import com.smedialink.storage.domain.manager.crypto.CryptoAccessManager;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.BlockchainType;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.wallet.token.TokenBalance;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import com.smedialink.storage.domain.model.wallet.transaction.Transaction;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.common.StringExtKt;
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
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import moxy.InjectViewState;
/* compiled from: WalletAttachAlertPresenter.kt */
@InjectViewState
/* renamed from: com.smedialink.ui.wallet.home.old.WalletAttachAlertPresenter */
/* loaded from: classes3.dex */
public final class WalletAttachAlertPresenter extends BasePresenter<WalletAttachAlertView> {
    private final HashMap<TokenCode, List<Transaction>> cachedTransactions;
    private final CryptoAccessManager cryptoAccessManager;
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final CryptoRecipientManager cryptoRecipientManager;
    private final ResourceManager resourceManager;
    private final SchedulersProvider schedulersProvider;
    private TokenCode selectedTokenCode;
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
        this.selectedTokenCode = TokenCode.UNKNOWN;
    }

    public final void startChooseNetworkDialog() {
        List<? extends BlockchainType> listOf;
        if (!this.cryptoAccessManager.isCurrentBlockchainWalletCreated()) {
            CryptoPreferenceHelper cryptoPreferenceHelper = this.cryptoPreferenceHelper;
            NetworkType.Companion companion = NetworkType.Companion;
            listOf = CollectionsKt__CollectionsJVMKt.listOf(CollectionsKt.first((List<? extends Object>) this.cryptoAccessManager.getCreatedWalletsBlockchains()));
            cryptoPreferenceHelper.setNetworkType((NetworkType) CollectionsKt.first((List<? extends Object>) companion.getNetworksByBlockchains(listOf)));
        }
        ((WalletAttachAlertView) getViewState()).showChooseNetworkDialog(this.cryptoPreferenceHelper.getNetworkType(), NetworkType.Companion.getNetworksByBlockchains(this.cryptoAccessManager.getCreatedWalletsBlockchains()), new WalletAttachAlertPresenter$startChooseNetworkDialog$1(this));
    }

    public final NetworkType getCurrentNetworkType() {
        return this.cryptoPreferenceHelper.getNetworkType();
    }

    public final void selectBalance(TokenBalance balance) {
        Intrinsics.checkNotNullParameter(balance, "balance");
        TokenCode code = balance.getCode();
        this.selectedTokenCode = code;
        getWalletTransactions(code);
    }

    public final void resolveTokenAction(TokenCode code, String userId) {
        Intrinsics.checkNotNullParameter(code, "code");
        Intrinsics.checkNotNullParameter(userId, "userId");
        if (code.isCryptoTokens()) {
            loadAddressInfoById(userId, getCurrentNetworkType().getBlockchainType());
        }
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

    @Override // com.smedialink.p031ui.base.mvp.base.BasePresenter, moxy.MvpPresenter
    public void onDestroy() {
        this.cryptoRecipientManager.onDetachViewState();
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void resetCache() {
        this.cachedTransactions.clear();
    }

    private final void getWalletBalance(boolean z) {
        Disposable subscribe = WalletInteractor.getWalletBalance$default(this.walletInteractor, z, null, 2, null).distinctUntilChanged().observeOn(this.schedulersProvider.mo707ui()).subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.home.old.WalletAttachAlertPresenter$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                WalletAttachAlertPresenter.m1630getWalletBalance$lambda0(WalletAttachAlertPresenter.this, (Result) obj);
            }
        }, new Consumer() { // from class: com.smedialink.ui.wallet.home.old.WalletAttachAlertPresenter$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                WalletAttachAlertPresenter.m1631getWalletBalance$lambda1(WalletAttachAlertPresenter.this, (Throwable) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "walletInteractor\n       …pty())\n                })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getWalletBalance$lambda-0  reason: not valid java name */
    public static final void m1630getWalletBalance$lambda0(WalletAttachAlertPresenter this$0, Result result) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (result instanceof Result.Success) {
            List<TokenBalance> configureTokens = this$0.configureTokens((List) ((Result.Success) result).getData());
            ((WalletAttachAlertView) this$0.getViewState()).showBalances(configureTokens);
            if (!configureTokens.isEmpty()) {
                this$0.selectBalance((TokenBalance) CollectionsKt.first((List<? extends Object>) configureTokens));
            }
        } else if (result instanceof Result.Error) {
            ((WalletAttachAlertView) this$0.getViewState()).showToast(((Result.Error) result).getError().getMessage(this$0.resourceManager));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getWalletBalance$lambda-1  reason: not valid java name */
    public static final void m1631getWalletBalance$lambda1(WalletAttachAlertPresenter this$0, Throwable th) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        WalletAttachAlertView walletAttachAlertView = (WalletAttachAlertView) this$0.getViewState();
        String message = th.getMessage();
        if (message == null) {
            message = "";
        }
        walletAttachAlertView.showToast(message);
    }

    private final List<TokenBalance> configureTokens(List<TokenBalance> list) {
        int collectionSizeOrDefault;
        int mapCapacity;
        int coerceAtLeast;
        CryptoPreferenceHelper cryptoPreferenceHelper = this.cryptoPreferenceHelper;
        WalletCryptoTokensSettingsMetadata tokensSettings = cryptoPreferenceHelper.getTokensSettings(cryptoPreferenceHelper.getNetworkType());
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
            linkedHashMap.put(((TokenBalance) obj2).getCode(), obj2);
        }
        List<WalletCryptoTokensSettingsTokenState> states = tokensSettings.getStates();
        ArrayList<WalletCryptoTokensSettingsTokenState> arrayList2 = new ArrayList();
        for (Object obj3 : states) {
            if (((WalletCryptoTokensSettingsTokenState) obj3).isEnabled()) {
                arrayList2.add(obj3);
            }
        }
        ArrayList arrayList3 = new ArrayList();
        for (WalletCryptoTokensSettingsTokenState walletCryptoTokensSettingsTokenState : arrayList2) {
            TokenBalance tokenBalance = (TokenBalance) linkedHashMap.get(TokenCode.Companion.map(walletCryptoTokensSettingsTokenState.getToken()));
            if (tokenBalance != null) {
                arrayList3.add(tokenBalance);
            }
        }
        return arrayList3;
    }

    private final void getWalletTransactions(final TokenCode tokenCode) {
        Disposable subscribe = Observable.just(Boolean.TRUE).switchMap(new Function() { // from class: com.smedialink.ui.wallet.home.old.WalletAttachAlertPresenter$$ExternalSyntheticLambda4
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource m1632getWalletTransactions$lambda6;
                m1632getWalletTransactions$lambda6 = WalletAttachAlertPresenter.m1632getWalletTransactions$lambda6(WalletAttachAlertPresenter.this, tokenCode, (Boolean) obj);
                return m1632getWalletTransactions$lambda6;
            }
        }).distinctUntilChanged().observeOn(this.schedulersProvider.mo707ui()).subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.home.old.WalletAttachAlertPresenter$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                WalletAttachAlertPresenter.m1633getWalletTransactions$lambda7(WalletAttachAlertPresenter.this, tokenCode, (Result) obj);
            }
        }, new Consumer() { // from class: com.smedialink.ui.wallet.home.old.WalletAttachAlertPresenter$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                WalletAttachAlertPresenter.m1634getWalletTransactions$lambda8(WalletAttachAlertPresenter.this, (Throwable) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "just(true)\n             …pty())\n                })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getWalletTransactions$lambda-6  reason: not valid java name */
    public static final ObservableSource m1632getWalletTransactions$lambda6(WalletAttachAlertPresenter this$0, TokenCode selectedTokenCode, Boolean it) {
        Result success;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(selectedTokenCode, "$selectedTokenCode");
        Intrinsics.checkNotNullParameter(it, "it");
        List<Transaction> list = this$0.cachedTransactions.get(selectedTokenCode);
        Observable observable = null;
        if (list != null && (success = Result.Companion.success(list)) != null) {
            observable = Observable.just(success);
            Intrinsics.checkNotNullExpressionValue(observable, "just(this)");
        }
        return observable == null ? WalletInteractor.getWalletTransactions$default(this$0.walletInteractor, false, null, selectedTokenCode, 0, null, 27, null) : observable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getWalletTransactions$lambda-7  reason: not valid java name */
    public static final void m1633getWalletTransactions$lambda7(WalletAttachAlertPresenter this$0, TokenCode selectedTokenCode, Result result) {
        List<Transaction> mutableList;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(selectedTokenCode, "$selectedTokenCode");
        if (result instanceof Result.Success) {
            HashMap<TokenCode, List<Transaction>> hashMap = this$0.cachedTransactions;
            Result.Success success = (Result.Success) result;
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) ((Collection) success.getData()));
            hashMap.put(selectedTokenCode, mutableList);
            List<BaseNode> mapTransactionsToGroups = this$0.mapTransactionsToGroups((List) success.getData());
            if (mapTransactionsToGroups.isEmpty()) {
                ((WalletAttachAlertView) this$0.getViewState()).onEmptyState();
            } else {
                ((WalletAttachAlertView) this$0.getViewState()).showTransactions(mapTransactionsToGroups);
            }
        } else if (result instanceof Result.Error) {
            Result.Error error = (Result.Error) result;
            if (error.getError().getStatus() == ApiErrorHandler.ErrorStatus.NO_CONNECTION) {
                ((WalletAttachAlertView) this$0.getViewState()).onNoInternetErrorState();
            } else {
                ((WalletAttachAlertView) this$0.getViewState()).onUnexpectedErrorState();
            }
            ((WalletAttachAlertView) this$0.getViewState()).showToast(error.getError().getMessage(this$0.resourceManager));
        } else if (result instanceof Result.Loading) {
            ((WalletAttachAlertView) this$0.getViewState()).onLoadingState();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getWalletTransactions$lambda-8  reason: not valid java name */
    public static final void m1634getWalletTransactions$lambda8(WalletAttachAlertPresenter this$0, Throwable th) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ((WalletAttachAlertView) this$0.getViewState()).onUnexpectedErrorState();
        WalletAttachAlertView walletAttachAlertView = (WalletAttachAlertView) this$0.getViewState();
        String message = th.getMessage();
        if (message == null) {
            message = "";
        }
        walletAttachAlertView.showToast(message);
    }

    private final List<BaseNode> mapTransactionsToGroups(List<? extends Transaction> list) {
        List distinct;
        distinct = CollectionsKt___CollectionsKt.distinct(list);
        ArrayList arrayList = new ArrayList();
        Iterator it = distinct.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            if (((Transaction) next).getTokenCode() == this.selectedTokenCode) {
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
