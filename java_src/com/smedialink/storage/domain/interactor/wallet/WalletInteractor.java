package com.smedialink.storage.domain.interactor.wallet;

import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.error.IErrorStatus;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.crypto.send.CryptoTransferMetadata;
import com.smedialink.storage.domain.model.crypto.send.TransferArgs;
import com.smedialink.storage.domain.model.wallet.token.TokenBalance;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import com.smedialink.storage.domain.model.wallet.transaction.Transaction;
import com.smedialink.storage.domain.repository.wallet.WalletRepository;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import java.util.List;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
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

    public final Observable<Result<List<TokenBalance>>> getWalletBalance(final boolean z, final NetworkType networkType) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Observable<Result<List<TokenBalance>>> walletBalance = this.walletRepository.getWalletBalance(z, networkType);
        final IErrorStatus[] iErrorStatusArr = {FirebaseFunctionsErrorHandler.ErrorStatus.ERR_MONEY_ACCOUNT_NOT_EXIST};
        Observable<R> flatMap = walletBalance.flatMap(new Function() { // from class: com.smedialink.storage.domain.interactor.wallet.WalletInteractor$getWalletBalance$$inlined$flatMapError$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lio/reactivex/ObservableSource<+TR;>; */
            @Override // io.reactivex.functions.Function
            public final ObservableSource apply(Result result) {
                boolean contains;
                WalletRepository walletRepository;
                SchedulersProvider schedulersProvider;
                Intrinsics.checkNotNullParameter(result, "result");
                if (result instanceof Result.Success) {
                    return Observable.just(result);
                }
                if (result instanceof Result.Error) {
                    Result.Error error = (Result.Error) result;
                    contains = ArraysKt___ArraysKt.contains(iErrorStatusArr, error.getError().getStatus());
                    if (contains) {
                        error.getError();
                        walletRepository = this.walletRepository;
                        Observable<Result<Boolean>> activateWallet = walletRepository.activateWallet();
                        final WalletInteractor walletInteractor = this;
                        final boolean z2 = z;
                        final NetworkType networkType2 = networkType;
                        Observable<R> flatMap2 = activateWallet.flatMap(new Function() { // from class: com.smedialink.storage.domain.interactor.wallet.WalletInteractor$getWalletBalance$1$1
                            @Override // io.reactivex.functions.Function
                            public final ObservableSource<? extends Result<List<TokenBalance>>> apply(Result<Boolean> it) {
                                WalletRepository walletRepository2;
                                SchedulersProvider schedulersProvider2;
                                Intrinsics.checkNotNullParameter(it, "it");
                                walletRepository2 = WalletInteractor.this.walletRepository;
                                Observable<Result<List<TokenBalance>>> walletBalance2 = walletRepository2.getWalletBalance(z2, networkType2);
                                schedulersProvider2 = WalletInteractor.this.schedulersProvider;
                                return walletBalance2.subscribeOn(schedulersProvider2.mo708io());
                            }
                        });
                        schedulersProvider = this.schedulersProvider;
                        Observable<R> subscribeOn = flatMap2.subscribeOn(schedulersProvider.mo708io());
                        Intrinsics.checkNotNullExpressionValue(subscribeOn, "fun getWalletBalance(for…(schedulersProvider.io())");
                        return subscribeOn;
                    }
                    Observable just = Observable.just(Result.Companion.error$default(Result.Companion, error.getError(), null, 2, null));
                    Intrinsics.checkNotNullExpressionValue(just, "just(Result.error<R>(result.error) as R)");
                    return just;
                }
                return Observable.empty();
            }
        });
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
        Observable<R> flatMap = walletRepository.getTokensBalance(listOf, z, networkType).flatMap(new Function() { // from class: com.smedialink.storage.domain.interactor.wallet.WalletInteractor$getTokenBalance$$inlined$flatMapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lio/reactivex/ObservableSource<+TR;>; */
            /* JADX WARN: Multi-variable type inference failed */
            @Override // io.reactivex.functions.Function
            public final ObservableSource apply(Result result) {
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    return result instanceof Result.Error ? Observable.just(Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null)) : Observable.empty();
                }
                Object data = result.getData();
                Intrinsics.checkNotNull(data);
                if (((List) data).isEmpty()) {
                    Observable never = Observable.never();
                    Intrinsics.checkNotNullExpressionValue(never, "never()");
                    return never;
                }
                Object data2 = result.getData();
                Intrinsics.checkNotNull(data2);
                Observable just = Observable.just(Result.Companion.success(CollectionsKt.first((List<? extends Object>) data2)));
                Intrinsics.checkNotNullExpressionValue(just, "just(this)");
                return just;
            }
        });
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
        int i3 = (i2 & 8) != 0 ? 30 : i;
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

    public final Observable<Result<Boolean>> sendTokens(TokenCode code, TransferArgs args) {
        Intrinsics.checkNotNullParameter(code, "code");
        Intrinsics.checkNotNullParameter(args, "args");
        Observable<Result<Boolean>> subscribeOn = this.walletRepository.sendTokens(code, args).startWith((Observable<Result<Boolean>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "walletRepository\n       …(schedulersProvider.io())");
        return subscribeOn;
    }
}
