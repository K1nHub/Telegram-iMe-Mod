package com.iMe.p031ui.wallet.cryptobox.create;

import io.reactivex.functions.Function;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ObservableExt.kt */
/* renamed from: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxPresenter$inlined$sam$i$io_reactivex_functions_Function$0 */
/* loaded from: classes4.dex */
public final /* synthetic */ class C2350x7c925b1e implements Function {
    private final /* synthetic */ Function1 function;

    public C2350x7c925b1e(Function1 function) {
        Intrinsics.checkNotNullParameter(function, "function");
        this.function = function;
    }

    @Override // io.reactivex.functions.Function
    public final /* synthetic */ Object apply(Object obj) {
        return this.function.invoke(obj);
    }
}
