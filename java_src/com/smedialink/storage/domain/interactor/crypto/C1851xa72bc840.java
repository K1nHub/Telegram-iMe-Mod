package com.smedialink.storage.domain.interactor.crypto;

import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.Wallet;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: CryptoWalletInteractor.kt */
/* renamed from: com.smedialink.storage.domain.interactor.crypto.CryptoWalletInteractor$withAllBip39BasedWalletsActivationCheck$1$1 */
/* loaded from: classes3.dex */
final class C1851xa72bc840 extends Lambda implements Function1<Result<? extends List<? extends Wallet>>, ObservableSource<? extends Result<? extends Wallet>>> {
    final /* synthetic */ Result<Wallet> $result;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public C1851xa72bc840(Result<? extends Wallet> result) {
        super(1);
        this.$result = result;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Result<Wallet>> invoke(Result<? extends List<? extends Wallet>> it) {
        Intrinsics.checkNotNullParameter(it, "it");
        Observable just = Observable.just(this.$result);
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }
}
