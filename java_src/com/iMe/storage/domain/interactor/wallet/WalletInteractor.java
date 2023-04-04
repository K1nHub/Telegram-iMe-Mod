package com.iMe.storage.domain.interactor.wallet;

import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.error.IErrorStatus;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.crypto.send.CryptoTransferMetadata;
import com.iMe.storage.domain.model.crypto.send.TransferArgs;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.storage.domain.model.wallet.token.TokenCode;
import com.iMe.storage.domain.model.wallet.transaction.Transaction;
import com.iMe.storage.domain.repository.wallet.WalletRepository;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.extentions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.utils.p031rx.SchedulersProvider;
import io.reactivex.Observable;
import java.util.List;
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

    public final Observable<Result<CryptoTransferMetadata>> getCryptoTransferMetadata(TokenCode tokenCode, String str, String str2, NetworkType networkType) {
        Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Observable<Result<CryptoTransferMetadata>> subscribeOn = this.walletRepository.getCryptoTransferMetadata(tokenCode, str, str2, networkType).startWith((Observable<Result<CryptoTransferMetadata>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "walletRepository\n       …(schedulersProvider.io())");
        return subscribeOn;
    }

    public static /* synthetic */ Observable getWalletBalance$default(WalletInteractor walletInteractor, boolean z, NetworkType networkType, int i, Object obj) {
        if ((i & 2) != 0) {
            networkType = walletInteractor.cryptoPreferenceHelper.getNetworkType();
        }
        return walletInteractor.getWalletBalance(z, networkType);
    }

    public final Observable<Result<List<TokenBalance>>> getWalletBalance(boolean z, NetworkType networkType) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Observable<R> flatMap = this.walletRepository.getWalletBalance(z, networkType).flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new WalletInteractor$getWalletBalance$$inlined$flatMapError$1(new IErrorStatus[]{FirebaseFunctionsErrorHandler.ErrorStatus.ERR_MONEY_ACCOUNT_NOT_EXIST}, this, z, networkType)));
        Intrinsics.checkNotNullExpressionValue(flatMap, "vararg errorStatus: IErr…e.empty()\n        }\n    }");
        Observable<Result<List<TokenBalance>>> subscribeOn = flatMap.startWith((Observable<R>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "walletRepository\n       …(schedulersProvider.io())");
        return subscribeOn;
    }

    public static /* synthetic */ Observable getTokenBalance$default(WalletInteractor walletInteractor, TokenCode tokenCode, boolean z, NetworkType networkType, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        if ((i & 4) != 0) {
            networkType = walletInteractor.cryptoPreferenceHelper.getNetworkType();
        }
        return walletInteractor.getTokenBalance(tokenCode, z, networkType);
    }

    public final Observable<Result<TokenBalance>> getTokenBalance(TokenCode tokenCode, boolean z, NetworkType networkType) {
        List<? extends TokenCode> listOf;
        Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        WalletRepository walletRepository = this.walletRepository;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(tokenCode);
        Observable<R> flatMap = walletRepository.getTokensBalance(listOf, z, networkType).flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new WalletInteractor$getTokenBalance$$inlined$flatMapSuccess$1()));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable<Result<TokenBalance>> subscribeOn = flatMap.startWith((Observable<R>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "walletRepository\n       …(schedulersProvider.io())");
        return subscribeOn;
    }

    public static /* synthetic */ Observable getWalletTransactions$default(WalletInteractor walletInteractor, boolean z, String str, TokenCode tokenCode, int i, NetworkType networkType, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            z = false;
        }
        String str2 = (i2 & 2) != 0 ? null : str;
        TokenCode tokenCode2 = (i2 & 4) == 0 ? tokenCode : null;
        if ((i2 & 8) != 0) {
            i = 30;
        }
        int i3 = i;
        if ((i2 & 16) != 0) {
            networkType = walletInteractor.cryptoPreferenceHelper.getNetworkType();
        }
        return walletInteractor.getWalletTransactions(z, str2, tokenCode2, i3, networkType);
    }

    public final Observable<Result<List<Transaction>>> getWalletTransactions(boolean z, String str, TokenCode tokenCode, int i, NetworkType networkType) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        boolean z2 = false;
        if (tokenCode != null && tokenCode.isUnknown()) {
            z2 = true;
        }
        Observable<Result<List<Transaction>>> subscribeOn = this.walletRepository.getWalletTransactionHistory(z, str, z2 ? null : tokenCode, i, networkType).startWith((Observable<Result<List<Transaction>>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "walletRepository\n       …(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<Boolean>> sendTokens(TokenCode code, TransferArgs args, BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(code, "code");
        Intrinsics.checkNotNullParameter(args, "args");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        Observable<Result<Boolean>> subscribeOn = this.walletRepository.sendTokens(code, args, blockchainType).startWith((Observable<Result<Boolean>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "walletRepository\n       …(schedulersProvider.io())");
        return subscribeOn;
    }
}
