package com.iMe.storage.domain.interactor.wallet;

import io.reactivex.functions.Function;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WalletSessionInteractor.kt */
/* loaded from: classes4.dex */
final class WalletSessionInteractor$sam$io_reactivex_functions_Function$0 implements Function {
    private final /* synthetic */ Function1 function;

    /* JADX INFO: Access modifiers changed from: package-private */
    public WalletSessionInteractor$sam$io_reactivex_functions_Function$0(Function1 function) {
        Intrinsics.checkNotNullParameter(function, "function");
        this.function = function;
    }

    @Override // io.reactivex.functions.Function
    public final /* synthetic */ Object apply(Object obj) {
        return this.function.invoke(obj);
    }
}
