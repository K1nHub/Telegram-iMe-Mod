package com.smedialink.p031ui.wallet.home.old;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.smedialink.manager.crypto.recipient.CryptoRecipientManager;
import com.smedialink.manager.crypto.recipient.CryptoRecipientView;
import com.smedialink.mapper.transaction.TransactionUiMappingKt;
import com.smedialink.model.wallet.home.HeaderItem;
import com.smedialink.p031ui.base.mvp.base.BasePresenter;
import com.smedialink.storage.data.locale.prefs.model.WalletCryptoTokensSettingsMetadata;
import com.smedialink.storage.data.locale.prefs.model.WalletCryptoTokensSettingsTokenState;
import com.smedialink.storage.domain.interactor.wallet.WalletInteractor;
import com.smedialink.storage.domain.manager.crypto.CryptoAccessManager;
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
import kotlin.jvm.functions.Function1;
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
        Observable observeOn = WalletInteractor.getWalletBalance$default(this.walletInteractor, z, null, 2, null).distinctUntilChanged().observeOn(this.schedulersProvider.mo707ui());
        final WalletAttachAlertPresenter$getWalletBalance$1 walletAttachAlertPresenter$getWalletBalance$1 = new WalletAttachAlertPresenter$getWalletBalance$1(this);
        Consumer consumer = new Consumer() { // from class: com.smedialink.ui.wallet.home.old.WalletAttachAlertPresenter$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                WalletAttachAlertPresenter.getWalletBalance$lambda$0(Function1.this, obj);
            }
        };
        final WalletAttachAlertPresenter$getWalletBalance$2 walletAttachAlertPresenter$getWalletBalance$2 = new WalletAttachAlertPresenter$getWalletBalance$2(this);
        Disposable subscribe = observeOn.subscribe(consumer, new Consumer() { // from class: com.smedialink.ui.wallet.home.old.WalletAttachAlertPresenter$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                WalletAttachAlertPresenter.getWalletBalance$lambda$1(Function1.this, obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "private fun getWalletBal…     .autoDispose()\n    }");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getWalletBalance$lambda$0(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getWalletBalance$lambda$1(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<TokenBalance> configureTokens(List<TokenBalance> list) {
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

    private final void getWalletTransactions(TokenCode tokenCode) {
        Observable just = Observable.just(Boolean.TRUE);
        final WalletAttachAlertPresenter$getWalletTransactions$1 walletAttachAlertPresenter$getWalletTransactions$1 = new WalletAttachAlertPresenter$getWalletTransactions$1(this, tokenCode);
        Observable observeOn = just.switchMap(new Function() { // from class: com.smedialink.ui.wallet.home.old.WalletAttachAlertPresenter$$ExternalSyntheticLambda4
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource walletTransactions$lambda$6;
                walletTransactions$lambda$6 = WalletAttachAlertPresenter.getWalletTransactions$lambda$6(Function1.this, obj);
                return walletTransactions$lambda$6;
            }
        }).distinctUntilChanged().observeOn(this.schedulersProvider.mo707ui());
        final WalletAttachAlertPresenter$getWalletTransactions$2 walletAttachAlertPresenter$getWalletTransactions$2 = new WalletAttachAlertPresenter$getWalletTransactions$2(this, tokenCode);
        Consumer consumer = new Consumer() { // from class: com.smedialink.ui.wallet.home.old.WalletAttachAlertPresenter$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                WalletAttachAlertPresenter.getWalletTransactions$lambda$7(Function1.this, obj);
            }
        };
        final WalletAttachAlertPresenter$getWalletTransactions$3 walletAttachAlertPresenter$getWalletTransactions$3 = new WalletAttachAlertPresenter$getWalletTransactions$3(this);
        Disposable subscribe = observeOn.subscribe(consumer, new Consumer() { // from class: com.smedialink.ui.wallet.home.old.WalletAttachAlertPresenter$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                WalletAttachAlertPresenter.getWalletTransactions$lambda$8(Function1.this, obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "private fun getWalletTra…     .autoDispose()\n    }");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource getWalletTransactions$lambda$6(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getWalletTransactions$lambda$7(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getWalletTransactions$lambda$8(Function1 tmp0, Object obj) {
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
