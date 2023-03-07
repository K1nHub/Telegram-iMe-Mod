package com.smedialink.storage.domain.interactor.crypto.cancel;

import com.smedialink.storage.domain.manager.crypto.CryptoAccessManager;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.Wallet;
import com.smedialink.storage.domain.model.crypto.cancel.CancelArgs;
import com.smedialink.storage.domain.model.crypto.cancel.CryptoCancelMetadata;
import com.smedialink.storage.domain.model.crypto.send.GasPriceInfo;
import com.smedialink.storage.domain.model.crypto.send.TransferArgs;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import com.smedialink.storage.domain.repository.crypto.cancel.CancelRepository;
import com.smedialink.storage.domain.utils.crypto.Convert;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Function;
import java.math.BigInteger;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CancelInteractor.kt */
/* loaded from: classes3.dex */
public final class CancelInteractor {
    private final CancelRepository cancelRepository;
    private final CryptoAccessManager cryptoAccessManager;
    private final SchedulersProvider schedulersProvider;

    static {
        new Companion(null);
    }

    public CancelInteractor(CryptoAccessManager cryptoAccessManager, CancelRepository cancelRepository, SchedulersProvider schedulersProvider) {
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(cancelRepository, "cancelRepository");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        this.cryptoAccessManager = cryptoAccessManager;
        this.cancelRepository = cancelRepository;
        this.schedulersProvider = schedulersProvider;
    }

    public final Observable<Result<String>> cancelEthTransaction(final TokenCode tokenCode, final String txHash) {
        Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
        Intrinsics.checkNotNullParameter(txHash, "txHash");
        Observable<R> flatMap = this.cancelRepository.getCryptoCancelMetadata(txHash).flatMap(new Function() { // from class: com.smedialink.storage.domain.interactor.crypto.cancel.CancelInteractor$cancelEthTransaction$$inlined$flatMapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lio/reactivex/ObservableSource<+TR;>; */
            @Override // io.reactivex.functions.Function
            public final ObservableSource apply(Result result) {
                CancelRepository cancelRepository;
                TokenCode cancelTokenBySourceTxToken;
                CryptoAccessManager cryptoAccessManager;
                SchedulersProvider schedulersProvider;
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    return result instanceof Result.Error ? Observable.just(Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null)) : Observable.empty();
                }
                Object data = result.getData();
                Intrinsics.checkNotNull(data);
                CryptoCancelMetadata cryptoCancelMetadata = (CryptoCancelMetadata) data;
                cancelRepository = CancelInteractor.this.cancelRepository;
                cancelTokenBySourceTxToken = CancelInteractor.this.getCancelTokenBySourceTxToken(tokenCode);
                String str = txHash;
                Convert.Unit unit = Convert.Unit.ETHER;
                long id = cryptoCancelMetadata.getTransactionParams().getChain().getId();
                double parseDouble = Double.parseDouble(cryptoCancelMetadata.getValue());
                GasPriceInfo fastest = cryptoCancelMetadata.getTransactionParams().getFastest();
                Intrinsics.checkNotNull(fastest);
                BigInteger limit = fastest.getLimit();
                BigInteger price = cryptoCancelMetadata.getTransactionParams().getFastest().getPrice();
                BigInteger nonce = cryptoCancelMetadata.getTransactionParams().getNonce();
                cryptoAccessManager = CancelInteractor.this.cryptoAccessManager;
                Wallet.EVM eVMWallet = cryptoAccessManager.getEVMWallet();
                String address = eVMWallet != null ? eVMWallet.getAddress() : null;
                Observable<Result<String>> cancel = cancelRepository.cancel(new CancelArgs.Ethereum(cancelTokenBySourceTxToken, str, new TransferArgs.EVM(parseDouble, unit, address == null ? "" : address, id, nonce, price, limit, null, 128, null)));
                schedulersProvider = CancelInteractor.this.schedulersProvider;
                Observable<Result<String>> subscribeOn = cancel.subscribeOn(schedulersProvider.mo708io());
                Intrinsics.checkNotNullExpressionValue(subscribeOn, "cancelRepository\n       …(schedulersProvider.io())");
                return subscribeOn;
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable<Result<String>> startWith = flatMap.subscribeOn(this.schedulersProvider.mo708io()).startWith((Observable) Result.Companion.loading$default(Result.Companion, null, 1, null));
        Intrinsics.checkNotNullExpressionValue(startWith, "cancelRepository\n       …artWith(Result.loading())");
        return startWith;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TokenCode getCancelTokenBySourceTxToken(TokenCode tokenCode) {
        if (tokenCode.isEthAndTokens()) {
            return TokenCode.ETHER;
        }
        if (tokenCode.isBscTokens()) {
            return TokenCode.BNB;
        }
        if (tokenCode.isPolygonTokens()) {
            return TokenCode.MATIC;
        }
        if (tokenCode.isFantomTokens()) {
            return TokenCode.FTM;
        }
        throw new IllegalStateException("Unsupported token transaction for cancel".toString());
    }

    /* compiled from: CancelInteractor.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
