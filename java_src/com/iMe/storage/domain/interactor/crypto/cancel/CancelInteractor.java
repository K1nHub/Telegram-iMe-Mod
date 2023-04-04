package com.iMe.storage.domain.interactor.crypto.cancel;

import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.wallet.token.TokenCode;
import com.iMe.storage.domain.repository.crypto.cancel.CancelRepository;
import com.iMe.storage.domain.utils.extentions.ObservableExtKt$sam$i$io_reactivex_functions_Function$0;
import com.iMe.storage.domain.utils.p031rx.SchedulersProvider;
import io.reactivex.Observable;
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

    public final Observable<Result<String>> cancelEthTransaction(TokenCode tokenCode, String txHash) {
        Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
        Intrinsics.checkNotNullParameter(txHash, "txHash");
        Observable<R> flatMap = this.cancelRepository.getCryptoCancelMetadata(txHash).flatMap(new ObservableExtKt$sam$i$io_reactivex_functions_Function$0(new CancelInteractor$cancelEthTransaction$$inlined$flatMapSuccess$1(this, tokenCode, txHash)));
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
