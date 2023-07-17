package com.iMe.storage.domain.interactor.wallet;

import com.iMe.storage.data.locale.prefs.model.TokenDisplaySettings;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.error.IErrorStatus;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.common.CursoredData;
import com.iMe.storage.domain.model.crypto.BlockchainType;
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
import com.iMe.storage.domain.utils.extentions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Observable;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WalletInteractor.kt */
/* loaded from: classes3.dex */
public final class WalletInteractor {
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final SchedulersProvider schedulersProvider;
    private final WalletRepository walletRepository;

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
        Observable<Result<CryptoTransferMetadata>> subscribeOn = this.walletRepository.getCryptoTransferMetadata(token, str, str2, network).startWith((Observable<Result<CryptoTransferMetadata>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo699io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "walletRepository\n       …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<Pair<TokenDetailed, Boolean>>> getTokenInfo(Token token) {
        Intrinsics.checkNotNullParameter(token, "token");
        Observable<Result<Pair<TokenDetailed, Boolean>>> subscribeOn = this.walletRepository.getTokenInfo(token).startWith((Observable<Result<Pair<TokenDetailed, Boolean>>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo699io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "walletRepository\n       …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<CursoredData<TokenDetailed>>> getCustomTokens(String str) {
        Observable<Result<CursoredData<TokenDetailed>>> subscribeOn = this.walletRepository.getCustomTokens(str).startWith((Observable<Result<CursoredData<TokenDetailed>>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo699io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "walletRepository\n       …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<CursoredData<FoundTokenWithFamily>>> searchTokens(String query, String networkId, String cursor) {
        Intrinsics.checkNotNullParameter(query, "query");
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Intrinsics.checkNotNullParameter(cursor, "cursor");
        Observable<Result<CursoredData<FoundTokenWithFamily>>> subscribeOn = this.walletRepository.searchTokens(query, networkId, cursor).startWith((Observable<Result<CursoredData<FoundTokenWithFamily>>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo699io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "walletRepository\n       …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<TokenListsData>> getTokenListsData(Token token) {
        Intrinsics.checkNotNullParameter(token, "token");
        Observable<Result<TokenListsData>> subscribeOn = this.walletRepository.getTokenListsData(token).startWith((Observable<Result<TokenListsData>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo699io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "walletRepository\n       …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<Boolean>> setTokenVisibility(Token token, boolean z) {
        Intrinsics.checkNotNullParameter(token, "token");
        Observable<Result<Boolean>> subscribeOn = this.walletRepository.setTokenVisibility(token, z).startWith((Observable<Result<Boolean>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo699io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "walletRepository\n       …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<Boolean>> detachCustomToken(Token token) {
        Intrinsics.checkNotNullParameter(token, "token");
        Observable<Result<Boolean>> subscribeOn = this.walletRepository.detachCustomToken(token).startWith((Observable<Result<Boolean>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo699io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "walletRepository\n       …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<Map<TokenDetailed, Boolean>>> getDisplayedTokens(String networkId) {
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Observable<Result<Map<TokenDetailed, Boolean>>> subscribeOn = this.walletRepository.getDisplayedTokens(networkId).startWith((Observable<Result<Map<TokenDetailed, Boolean>>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo699io());
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
        Observable<Result<List<TokenDisplaySettings.Crypto>>> subscribeOn = this.walletRepository.getTokensSettings(networkId).startWith((Observable<Result<List<TokenDisplaySettings.Crypto>>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo699io());
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
        Observable<R> flatMap = this.walletRepository.getWalletBalance(z, networkId).flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new WalletInteractor$getWalletBalance$$inlined$flatMapError$1(new IErrorStatus[]{FirebaseFunctionsErrorHandler.ErrorStatus.ERR_MONEY_ACCOUNT_NOT_EXIST}, this, z, networkId)));
        Intrinsics.checkNotNullExpressionValue(flatMap, "vararg errorStatus: IErr…e.empty()\n        }\n    }");
        Observable<Result<List<TokenBalance>>> subscribeOn = flatMap.startWith((Observable<R>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo699io());
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
        Observable<R> flatMap = walletRepository.getTokensBalance(listOf, z, networkId).flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new WalletInteractor$getTokenBalance$$inlined$flatMapSuccess$1()));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable<Result<TokenBalance>> subscribeOn = flatMap.startWith((Observable<R>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo699io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "walletRepository\n       …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<List<TokenBalance>>> getTokensBalances(List<Token> tokens, boolean z, String networkId) {
        Intrinsics.checkNotNullParameter(tokens, "tokens");
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Observable<Result<List<TokenBalance>>> subscribeOn = this.walletRepository.getTokensBalance(tokens, z, networkId).startWith((Observable<Result<List<TokenBalance>>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo699io());
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
        Observable<Result<List<Transaction>>> subscribeOn = this.walletRepository.getWalletTransactionHistory(z, str, token, i, networkId).startWith((Observable<Result<List<Transaction>>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo699io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "walletRepository\n       …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<Boolean>> sendTokens(TransferArgs args, BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(args, "args");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        Observable<Result<Boolean>> subscribeOn = this.walletRepository.sendTokens(args, blockchainType).startWith((Observable<Result<Boolean>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo699io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "walletRepository\n       …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<List<Network>>> getSupportedNetworks() {
        Observable<Result<List<Network>>> subscribeOn = this.walletRepository.getSupportedNetworks().startWith((Observable<Result<List<Network>>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo699io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "walletRepository\n       …(schedulersProvider.io())");
        return subscribeOn;
    }
}
