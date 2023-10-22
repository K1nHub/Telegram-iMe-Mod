package com.iMe.p030ui.wallet.cryptobox.create;

import io.reactivex.functions.Function;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ObservableExt.kt */
/* renamed from: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxPresenter$inlined$sam$i$io_reactivex_functions_Function$0 */
/* loaded from: classes3.dex */
public final /* synthetic */ class C2229x7c925b1e implements Function {
    private final /* synthetic */ Function1 function;

    public C2229x7c925b1e(Function1 function) {
        Intrinsics.checkNotNullParameter(function, "function");
        this.function = function;
    }

    @Override // io.reactivex.functions.Function
    public final /* synthetic */ Object apply(Object obj) {
        return this.function.invoke(obj);
    }
}
