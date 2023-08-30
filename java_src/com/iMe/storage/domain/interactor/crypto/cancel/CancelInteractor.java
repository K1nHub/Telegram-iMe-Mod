package com.iMe.storage.domain.interactor.crypto.cancel;

import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.model.crypto.cancel.CancelArgs;
import com.iMe.storage.domain.model.crypto.cancel.CryptoCancelMetadata;
import com.iMe.storage.domain.model.crypto.send.GasPriceInfo;
import com.iMe.storage.domain.model.crypto.send.TransferArgs;
import com.iMe.storage.domain.repository.crypto.cancel.CancelRepository;
import com.iMe.storage.domain.utils.crypto.Convert;
import com.iMe.storage.domain.utils.extentions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import java.math.BigInteger;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CancelInteractor.kt */
/* loaded from: classes3.dex */
public final class CancelInteractor {
    private final CancelRepository cancelRepository;
    private final CryptoAccessManager cryptoAccessManager;
    private final SchedulersProvider schedulersProvider;

    public CancelInteractor(CryptoAccessManager cryptoAccessManager, CancelRepository cancelRepository, SchedulersProvider schedulersProvider) {
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(cancelRepository, "cancelRepository");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        this.cryptoAccessManager = cryptoAccessManager;
        this.cancelRepository = cancelRepository;
        this.schedulersProvider = schedulersProvider;
    }

    public final Observable<Result<String>> cancelEthTransaction(final String networkId, final String txHash) {
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        Intrinsics.checkNotNullParameter(txHash, "txHash");
        Observable<R> flatMap = this.cancelRepository.getCryptoCancelMetadata(txHash).flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new Function1<Result<? extends CryptoCancelMetadata>, ObservableSource<? extends Result<? extends String>>>() { // from class: com.iMe.storage.domain.interactor.crypto.cancel.CancelInteractor$cancelEthTransaction$$inlined$flatMapSuccess$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Result<? extends String>> invoke(Result<? extends CryptoCancelMetadata> result) {
                CancelRepository cancelRepository;
                CryptoAccessManager cryptoAccessManager;
                SchedulersProvider schedulersProvider;
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    if (result instanceof Result.Error) {
                        Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                        Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess");
                        return Observable.just(error$default);
                    }
                    return Observable.empty();
                }
                CryptoCancelMetadata data = result.getData();
                Intrinsics.checkNotNull(data);
                CryptoCancelMetadata cryptoCancelMetadata = data;
                cancelRepository = CancelInteractor.this.cancelRepository;
                String str = networkId;
                String str2 = txHash;
                int factor = Convert.Unit.ETHER.getFactor();
                long chainId = cryptoCancelMetadata.getTransactionParams().getChainId();
                double parseDouble = Double.parseDouble(cryptoCancelMetadata.getValue());
                GasPriceInfo fastest = cryptoCancelMetadata.getTransactionParams().getFastest();
                Intrinsics.checkNotNull(fastest);
                BigInteger limit = fastest.getLimit();
                BigInteger price = cryptoCancelMetadata.getTransactionParams().getFastest().getPrice();
                BigInteger nonce = cryptoCancelMetadata.getTransactionParams().getNonce();
                cryptoAccessManager = CancelInteractor.this.cryptoAccessManager;
                Wallet.EVM eVMWallet = cryptoAccessManager.getEVMWallet();
                String address = eVMWallet != null ? eVMWallet.getAddress() : null;
                Observable<Result<String>> cancel = cancelRepository.cancel(new CancelArgs.Ethereum(str, str2, new TransferArgs.EVM(parseDouble, factor, address == null ? "" : address, chainId, nonce, price, limit, null)));
                schedulersProvider = CancelInteractor.this.schedulersProvider;
                Observable<Result<String>> subscribeOn = cancel.subscribeOn(schedulersProvider.mo717io());
                Intrinsics.checkNotNullExpressionValue(subscribeOn, "with(result.data!!) {\n  …                        }");
                return subscribeOn;
            }
        }));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable<Result<String>> startWith = flatMap.subscribeOn(this.schedulersProvider.mo717io()).startWith((Observable) Result.Companion.loading$default(Result.Companion, null, 1, null));
        Intrinsics.checkNotNullExpressionValue(startWith, "cancelRepository\n       …artWith(Result.loading())");
        return startWith;
    }
}
