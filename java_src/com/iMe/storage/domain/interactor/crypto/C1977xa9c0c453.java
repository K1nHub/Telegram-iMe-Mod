package com.iMe.storage.domain.interactor.crypto;

import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.Wallet;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* renamed from: com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor$linkWalletsWithCheck$lambda$31$lambda$30$$inlined$flatMapAnyError$1 */
/* loaded from: classes3.dex */
public final class C1977xa9c0c453 extends Lambda implements Function1<Result<? extends Boolean>, ObservableSource<? extends Result<? extends Boolean>>> {
    final /* synthetic */ List $changedWallets$inlined;
    final /* synthetic */ CryptoWalletInteractor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1977xa9c0c453(List list, CryptoWalletInteractor cryptoWalletInteractor) {
        super(1);
        this.$changedWallets$inlined = list;
        this.this$0 = cryptoWalletInteractor;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<? extends Boolean>> invoke(Result<? extends Boolean> result) {
        CryptoAccessManager cryptoAccessManager;
        Intrinsics.checkNotNullParameter(result, "result");
        if (result instanceof Result.Success) {
            return Observable.just(result);
        }
        if (!(result instanceof Result.Error)) {
            return Observable.empty();
        }
        ((Result.Error) result).getError();
        for (Wallet wallet2 : this.$changedWallets$inlined) {
            cryptoAccessManager = this.this$0.cryptoAccessManager;
            cryptoAccessManager.deleteWallet(wallet2.getBlockchainType());
        }
        Observable just = Observable.just(result);
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }
}
