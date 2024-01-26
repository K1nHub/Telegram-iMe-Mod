package com.iMe.storage.domain.interactor.wallet;

import com.iMe.storage.data.locale.prefs.model.TokenDisplaySettings;
import com.iMe.storage.data.utils.crypto.NetworksHelper;
import com.iMe.storage.data.utils.extentions.CollectionExtKt;
import com.iMe.storage.data.utils.extentions.DateExtKt;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.common.CursoredData;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.model.crypto.send.CryptoTransferMetadata;
import com.iMe.storage.domain.model.crypto.send.TransferArgs;
import com.iMe.storage.domain.model.wallet.token.FoundTokenWithFamily;
import com.iMe.storage.domain.model.wallet.token.Token;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.model.wallet.token.TokenListsData;
import com.iMe.storage.domain.model.wallet.transaction.Transaction;
import com.iMe.storage.domain.repository.wallet.WalletRepository;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.extensions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.utils.p029rx.SchedulersProvider;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WalletInteractor.kt */
/* loaded from: classes3.dex */
public final class WalletInteractor {
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final SchedulersProvider schedulersProvider;
    private final WalletRepository walletRepository;

    static {
        new Companion(null);
    }

    public WalletInteractor(WalletRepository walletRepository, CryptoPreferenceHelper cryptoPreferenceHelper, SchedulersProvider schedulersProvider) {
        Intrinsics.checkNotNullParameter(walletRepository, "walletRepository");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        this.walletRepository = walletRepository;
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.schedulersProvider = schedulersProvider;
    }

    public final Observable<Result<CryptoTransferMetadata>> getCryptoTransferMetadata(Token token, String str, String str2, Network network) {
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(network, "network");
        Observable<Result<CryptoTransferMetadata>> subscribeOn = this.walletRepository.getCryptoTransferMetadata(token, str, str2, network).startWith((Observable<Result<CryptoTransferMetadata>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo1014io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "walletRepository\n       …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<Pair<TokenDetailed, Boolean>>> getTokenInfo(Token token) {
        Intrinsics.checkNotNullParameter(token, "token");
        Observable<Result<Pair<TokenDetailed, Boolean>>> subscribeOn = this.walletRepository.getTokenInfo(token).startWith((Observable<Result<Pair<TokenDetailed, Boolean>>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo1014io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "walletRepository\n       …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<CursoredData<TokenDetailed>>> getCustomTokens(String str) {
        Observable<Result<CursoredData<TokenDetailed>>> subscribeOn = this.walletRepository.getCustomTokens(str).startWith((Observable<Result<CursoredData<TokenDetailed>>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo1014io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "walletRepository\n       …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<CursoredData<FoundTokenWithFamily>>> searchTokens(String query, String networkId, String cursor) {
        Intrinsics.checkNotNullParameter(query, "query");
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Intrinsics.checkNotNullParameter(cursor, "cursor");
        Observable<Result<CursoredData<FoundTokenWithFamily>>> subscribeOn = this.walletRepository.searchTokens(query, networkId, cursor).startWith((Observable<Result<CursoredData<FoundTokenWithFamily>>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo1014io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "walletRepository\n       …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<TokenListsData>> getTokenListsData(Token token) {
        Intrinsics.checkNotNullParameter(token, "token");
        Observable<Result<TokenListsData>> subscribeOn = this.walletRepository.getTokenListsData(token).startWith((Observable<Result<TokenListsData>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo1014io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "walletRepository\n       …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<Boolean>> setTokenVisibility(Token token, boolean z) {
        Intrinsics.checkNotNullParameter(token, "token");
        Observable<Result<Boolean>> subscribeOn = this.walletRepository.setTokenVisibility(token, z).startWith((Observable<Result<Boolean>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo1014io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "walletRepository\n       …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<Boolean>> detachCustomToken(Token token) {
        Intrinsics.checkNotNullParameter(token, "token");
        Observable<Result<Boolean>> subscribeOn = this.walletRepository.detachCustomToken(token).startWith((Observable<Result<Boolean>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo1014io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "walletRepository\n       …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<Map<TokenDetailed, Boolean>>> getDisplayedTokens(String networkId) {
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Observable<Result<Map<TokenDetailed, Boolean>>> subscribeOn = this.walletRepository.getDisplayedTokens(networkId).startWith((Observable<Result<Map<TokenDetailed, Boolean>>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo1014io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "walletRepository\n       …(schedulersProvider.io())");
        return subscribeOn;
    }

    public static /* synthetic */ Observable getTokensSettings$default(WalletInteractor walletInteractor, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = walletInteractor.cryptoPreferenceHelper.getNetworkId();
        }
        return walletInteractor.getTokensSettings(str);
    }

    public final Observable<Result<List<TokenDisplaySettings.Crypto>>> getTokensSettings(String networkId) {
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Observable<Result<List<TokenDisplaySettings.Crypto>>> subscribeOn = this.walletRepository.getTokensSettings(networkId).startWith((Observable<Result<List<TokenDisplaySettings.Crypto>>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo1014io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "walletRepository\n       …(schedulersProvider.io())");
        return subscribeOn;
    }

    public static /* synthetic */ Observable getWalletBalance$default(WalletInteractor walletInteractor, boolean z, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = walletInteractor.cryptoPreferenceHelper.getNetworkId();
        }
        return walletInteractor.getWalletBalance(z, str);
    }

    public final Observable<Result<List<TokenBalance>>> getWalletBalance(boolean z, String networkId) {
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Observable<Result<List<TokenBalance>>> subscribeOn = this.walletRepository.getWalletBalance(z, networkId).startWith((Observable<Result<List<TokenBalance>>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo1014io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "walletRepository\n       …(schedulersProvider.io())");
        return subscribeOn;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Observable getWalletMultiChainBalance$default(WalletInteractor walletInteractor, boolean z, List list, int i, Object obj) {
        int collectionSizeOrDefault;
        if ((i & 2) != 0) {
            List<Network> enabledCreatedNetworks = NetworksHelper.INSTANCE.getEnabledCreatedNetworks();
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(enabledCreatedNetworks, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (Network network : enabledCreatedNetworks) {
                arrayList.add(network.getId());
            }
            list = arrayList;
        }
        return walletInteractor.getWalletMultiChainBalance(z, list);
    }

    public final Observable<Result<List<TokenBalance>>> getWalletMultiChainBalance(boolean z, List<String> networksIds) {
        Intrinsics.checkNotNullParameter(networksIds, "networksIds");
        Observable<Result<List<TokenBalance>>> subscribeOn = this.walletRepository.getWalletMultiChainBalance(z, networksIds).startWith((Observable<Result<List<TokenBalance>>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo1014io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "walletRepository\n       …(schedulersProvider.io())");
        return subscribeOn;
    }

    public static /* synthetic */ Observable getTokenBalance$default(WalletInteractor walletInteractor, Token token, boolean z, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        if ((i & 4) != 0) {
            str = walletInteractor.cryptoPreferenceHelper.getNetworkId();
        }
        return walletInteractor.getTokenBalance(token, z, str);
    }

    public final Observable<Result<TokenBalance>> getTokenBalance(Token token, boolean z, String networkId) {
        List<Token> listOf;
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        WalletRepository walletRepository = this.walletRepository;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(token);
        Observable<R> flatMap = walletRepository.getTokensBalance(listOf, z, networkId).flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Result<? extends List<? extends TokenBalance>>, ObservableSource<? extends Result<? extends TokenBalance>>>() { // from class: com.iMe.storage.domain.interactor.wallet.WalletInteractor$getTokenBalance$$inlined$flatMapSuccess$1
            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Result<? extends TokenBalance>> invoke(Result<? extends List<? extends TokenBalance>> result) {
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    if (result instanceof Result.Error) {
                        Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                        Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extensions.ObservableExtKt.flatMapSuccess");
                        return Observable.just(error$default);
                    }
                    return Observable.empty();
                }
                List<? extends TokenBalance> data = result.getData();
                Intrinsics.checkNotNull(data);
                if (data.isEmpty()) {
                    Observable never = Observable.never();
                    Intrinsics.checkNotNullExpressionValue(never, "never()");
                    return never;
                }
                List<? extends TokenBalance> data2 = result.getData();
                Intrinsics.checkNotNull(data2);
                Observable just = Observable.just(Result.Companion.success(CollectionsKt.first((List<? extends Object>) data2)));
                Intrinsics.checkNotNullExpressionValue(just, "just(this)");
                return just;
            }
        }));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable<Result<TokenBalance>> subscribeOn = flatMap.startWith((Observable<R>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo1014io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "walletRepository\n       …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<List<TokenBalance>>> getTokensBalances(List<Token> tokens, boolean z, String networkId) {
        Intrinsics.checkNotNullParameter(tokens, "tokens");
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Observable<Result<List<TokenBalance>>> subscribeOn = this.walletRepository.getTokensBalance(tokens, z, networkId).startWith((Observable<Result<List<TokenBalance>>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo1014io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "walletRepository\n       …(schedulersProvider.io())");
        return subscribeOn;
    }

    public static /* synthetic */ Observable getWalletTransactions$default(WalletInteractor walletInteractor, boolean z, String str, Token token, int i, String str2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            z = false;
        }
        String str3 = (i2 & 2) != 0 ? null : str;
        Token token2 = (i2 & 4) == 0 ? token : null;
        if ((i2 & 8) != 0) {
            i = 30;
        }
        int i3 = i;
        if ((i2 & 16) != 0) {
            str2 = walletInteractor.cryptoPreferenceHelper.getNetworkId();
        }
        return walletInteractor.getWalletTransactions(z, str3, token2, i3, str2);
    }

    public final Observable<Result<List<Transaction>>> getWalletTransactions(boolean z, String str, Token token, int i, String networkId) {
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Observable<Result<List<Transaction>>> subscribeOn = this.walletRepository.getWalletTransactionHistory(z, str, token, i, networkId).startWith((Observable<Result<List<Transaction>>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo1014io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "walletRepository\n       …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<String>> sendTokens(TransferArgs args, Network network) {
        Intrinsics.checkNotNullParameter(args, "args");
        Intrinsics.checkNotNullParameter(network, "network");
        Observable<Result<String>> subscribeOn = this.walletRepository.sendTokens(args, network).startWith((Observable<Result<String>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo1014io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "walletRepository\n       …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<List<Network>>> getSupportedNetworksWithUpdateCheck() {
        boolean isHoursAgo = DateExtKt.isHoursAgo(6L, this.cryptoPreferenceHelper.getLastNetworksUpdateTime());
        if (CollectionExtKt.isSingletonList(this.cryptoPreferenceHelper.getSupportedNetworks()) || isHoursAgo) {
            Observable<Result<List<Network>>> supportedNetworks = getSupportedNetworks();
            final Function1<Result<? extends List<? extends Network>>, ObservableSource<? extends Result<? extends List<? extends Network>>>> function1 = new Function1<Result<? extends List<? extends Network>>, ObservableSource<? extends Result<? extends List<? extends Network>>>>() { // from class: com.iMe.storage.domain.interactor.wallet.WalletInteractor$getSupportedNetworksWithUpdateCheck$1
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ ObservableSource<? extends Result<? extends List<? extends Network>>> invoke(Result<? extends List<? extends Network>> result) {
                    return invoke2((Result<? extends List<Network>>) result);
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final ObservableSource<? extends Result<List<Network>>> invoke2(Result<? extends List<Network>> result) {
                    CryptoPreferenceHelper cryptoPreferenceHelper;
                    CryptoPreferenceHelper cryptoPreferenceHelper2;
                    Intrinsics.checkNotNullParameter(result, "result");
                    if (result instanceof Result.Error) {
                        WalletInteractor.this.updateEnabledNetworks();
                        cryptoPreferenceHelper2 = WalletInteractor.this.cryptoPreferenceHelper;
                        Observable just = Observable.just(Result.Companion.success(cryptoPreferenceHelper2.getSupportedNetworks()));
                        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
                        return just;
                    } else if (!(result instanceof Result.Success)) {
                        Observable just2 = Observable.just(result);
                        Intrinsics.checkNotNullExpressionValue(just2, "just(this)");
                        return just2;
                    } else {
                        WalletInteractor.this.onNetworksUpdateSuccess((List) ((Result.Success) result).getData());
                        cryptoPreferenceHelper = WalletInteractor.this.cryptoPreferenceHelper;
                        Observable just3 = Observable.just(Result.Companion.success(cryptoPreferenceHelper.getSupportedNetworks()));
                        Intrinsics.checkNotNullExpressionValue(just3, "just(this)");
                        return just3;
                    }
                }
            };
            Observable flatMap = supportedNetworks.flatMap(new Function() { // from class: com.iMe.storage.domain.interactor.wallet.WalletInteractor$$ExternalSyntheticLambda0
                @Override // io.reactivex.functions.Function
                public final Object apply(Object obj) {
                    ObservableSource supportedNetworksWithUpdateCheck$lambda$2;
                    supportedNetworksWithUpdateCheck$lambda$2 = WalletInteractor.getSupportedNetworksWithUpdateCheck$lambda$2(Function1.this, obj);
                    return supportedNetworksWithUpdateCheck$lambda$2;
                }
            });
            Intrinsics.checkNotNullExpressionValue(flatMap, "fun getSupportedNetworks…ervable()\n        }\n    }");
            return flatMap;
        }
        updateEnabledNetworks();
        Observable<Result<List<Network>>> just = Observable.just(Result.Companion.success(this.cryptoPreferenceHelper.getSupportedNetworks()));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource getSupportedNetworksWithUpdateCheck$lambda$2(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    private final Observable<Result<List<Network>>> getSupportedNetworks() {
        Observable<Result<List<Network>>> subscribeOn = this.walletRepository.getSupportedNetworks().startWith((Observable<Result<List<Network>>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo1014io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "walletRepository\n       …(schedulersProvider.io())");
        return subscribeOn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onNetworksUpdateSuccess(List<Network> list) {
        Set set;
        Set<Network> subtract;
        int collectionSizeOrDefault;
        List<String> plus;
        int collectionSizeOrDefault2;
        CryptoPreferenceHelper cryptoPreferenceHelper = this.cryptoPreferenceHelper;
        set = CollectionsKt___CollectionsKt.toSet(cryptoPreferenceHelper.getSupportedNetworks());
        subtract = CollectionsKt___CollectionsKt.subtract(list, set);
        cryptoPreferenceHelper.setSupportedNetworks(list);
        if (cryptoPreferenceHelper.getEnabledNetworksIds().isEmpty()) {
            List<Network> supportedNetworks = cryptoPreferenceHelper.getSupportedNetworks();
            collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(supportedNetworks, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault2);
            for (Network network : supportedNetworks) {
                arrayList.add(network.getId());
            }
            cryptoPreferenceHelper.setEnabledNetworksIds(arrayList);
        } else if (!subtract.isEmpty()) {
            List<String> enabledNetworksIds = cryptoPreferenceHelper.getEnabledNetworksIds();
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(subtract, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
            for (Network network2 : subtract) {
                arrayList2.add(network2.getId());
            }
            plus = CollectionsKt___CollectionsKt.plus((Collection) enabledNetworksIds, (Iterable) arrayList2);
            cryptoPreferenceHelper.setEnabledNetworksIds(plus);
        }
        cryptoPreferenceHelper.setLastNetworksUpdateTime(DateExtKt.now());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateEnabledNetworks() {
        int collectionSizeOrDefault;
        CryptoPreferenceHelper cryptoPreferenceHelper = this.cryptoPreferenceHelper;
        if (cryptoPreferenceHelper.getEnabledNetworksIds().isEmpty()) {
            List<Network> supportedNetworks = cryptoPreferenceHelper.getSupportedNetworks();
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(supportedNetworks, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (Network network : supportedNetworks) {
                arrayList.add(network.getId());
            }
            cryptoPreferenceHelper.setEnabledNetworksIds(arrayList);
        }
    }

    /* compiled from: WalletInteractor.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
