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
import java.math.BigInteger;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* loaded from: classes3.dex */
public final class CancelInteractor$cancelEthTransaction$$inlined$flatMapSuccess$1 extends Lambda implements Function1<Result<? extends CryptoCancelMetadata>, ObservableSource<? extends Result<? extends String>>> {
    final /* synthetic */ TokenCode $tokenCode$inlined;
    final /* synthetic */ String $txHash$inlined;
    final /* synthetic */ CancelInteractor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CancelInteractor$cancelEthTransaction$$inlined$flatMapSuccess$1(CancelInteractor cancelInteractor, TokenCode tokenCode, String str) {
        super(1);
        this.this$0 = cancelInteractor;
        this.$tokenCode$inlined = tokenCode;
        this.$txHash$inlined = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<? extends String>> invoke(Result<? extends CryptoCancelMetadata> result) {
        CancelRepository cancelRepository;
        TokenCode cancelTokenBySourceTxToken;
        CryptoAccessManager cryptoAccessManager;
        SchedulersProvider schedulersProvider;
        Intrinsics.checkNotNullParameter(result, "result");
        if (!(result instanceof Result.Success)) {
            if (result instanceof Result.Error) {
                Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.smedialink.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess");
                return Observable.just(error$default);
            }
            return Observable.empty();
        }
        CryptoCancelMetadata data = result.getData();
        Intrinsics.checkNotNull(data);
        CryptoCancelMetadata cryptoCancelMetadata = data;
        cancelRepository = this.this$0.cancelRepository;
        cancelTokenBySourceTxToken = this.this$0.getCancelTokenBySourceTxToken(this.$tokenCode$inlined);
        String str = this.$txHash$inlined;
        Convert.Unit unit = Convert.Unit.ETHER;
        long id = cryptoCancelMetadata.getTransactionParams().getChain().getId();
        double parseDouble = Double.parseDouble(cryptoCancelMetadata.getValue());
        GasPriceInfo fastest = cryptoCancelMetadata.getTransactionParams().getFastest();
        Intrinsics.checkNotNull(fastest);
        BigInteger limit = fastest.getLimit();
        BigInteger price = cryptoCancelMetadata.getTransactionParams().getFastest().getPrice();
        BigInteger nonce = cryptoCancelMetadata.getTransactionParams().getNonce();
        cryptoAccessManager = this.this$0.cryptoAccessManager;
        Wallet.EVM eVMWallet = cryptoAccessManager.getEVMWallet();
        String address = eVMWallet != null ? eVMWallet.getAddress() : null;
        Observable<Result<String>> cancel = cancelRepository.cancel(new CancelArgs.Ethereum(cancelTokenBySourceTxToken, str, new TransferArgs.EVM(parseDouble, unit, address == null ? "" : address, id, nonce, price, limit, null, 128, null)));
        schedulersProvider = this.this$0.schedulersProvider;
        Observable<Result<String>> subscribeOn = cancel.subscribeOn(schedulersProvider.mo707io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "cancelRepository\n       …(schedulersProvider.io())");
        return subscribeOn;
    }
}
