package com.smedialink.storage.domain.interactor.crypto;

import io.reactivex.functions.Function;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoWalletInteractor.kt */
/* loaded from: classes3.dex */
final class CryptoWalletInteractor$sam$io_reactivex_functions_Function$0 implements Function {
    private final /* synthetic */ Function1 function;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CryptoWalletInteractor$sam$io_reactivex_functions_Function$0(Function1 function) {
        Intrinsics.checkNotNullParameter(function, "function");
        this.function = function;
    }

    @Override // io.reactivex.functions.Function
    public final /* synthetic */ Object apply(Object obj) {
        return this.function.invoke(obj);
    }
}
