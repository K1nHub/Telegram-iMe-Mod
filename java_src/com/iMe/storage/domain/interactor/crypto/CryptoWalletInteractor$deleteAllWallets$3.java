package com.iMe.storage.domain.interactor.crypto;

import com.iMe.storage.domain.model.Result;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CryptoWalletInteractor.kt */
/* loaded from: classes3.dex */
public final class CryptoWalletInteractor$deleteAllWallets$3 extends Lambda implements Function1<Result<? extends Boolean>, ObservableSource<? extends Result<? extends Boolean>>> {
    final /* synthetic */ Observable<Result<Boolean>> $finalObservable;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CryptoWalletInteractor$deleteAllWallets$3(Observable<Result<Boolean>> observable) {
        super(1);
        this.$finalObservable = observable;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final ObservableSource<? extends Result<Boolean>> invoke2(Result<Boolean> it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return this.$finalObservable;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ ObservableSource<? extends Result<? extends Boolean>> invoke(Result<? extends Boolean> result) {
        return invoke2((Result<Boolean>) result);
    }
}
