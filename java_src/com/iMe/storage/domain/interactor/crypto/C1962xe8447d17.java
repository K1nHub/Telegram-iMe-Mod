package com.iMe.storage.domain.interactor.crypto;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.Wallet;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* renamed from: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$importBib39BasedWallets$lambda$17$$inlined$flatMapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1962xe8447d17 extends Lambda implements Function1<Result<? extends Wallet>, ObservableSource<? extends Result<? extends Wallet>>> {
    final /* synthetic */ CryptoWalletInteractor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1962xe8447d17(CryptoWalletInteractor cryptoWalletInteractor) {
        super(1);
        this.this$0 = cryptoWalletInteractor;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<? extends Wallet>> invoke(Result<? extends Wallet> result) {
        Observable linkWalletAddressWithCheck;
        Intrinsics.checkNotNullParameter(result, "result");
        if (!(result instanceof Result.Success)) {
            if (result instanceof Result.Error) {
                Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess");
                return Observable.just(error$default);
            }
            return Observable.empty();
        }
        CryptoWalletInteractor cryptoWalletInteractor = this.this$0;
        Wallet data = result.getData();
        Intrinsics.checkNotNull(data);
        linkWalletAddressWithCheck = cryptoWalletInteractor.linkWalletAddressWithCheck(data);
        return linkWalletAddressWithCheck;
    }
}
