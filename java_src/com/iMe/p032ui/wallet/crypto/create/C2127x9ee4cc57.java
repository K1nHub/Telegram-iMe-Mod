package com.iMe.p032ui.wallet.crypto.create;

import io.reactivex.functions.Function;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ObservableExt.kt */
/* renamed from: com.iMe.ui.wallet.crypto.create.CreateWalletPresenter$inlined$sam$i$io_reactivex_functions_Function$0 */
/* loaded from: classes3.dex */
public final /* synthetic */ class C2127x9ee4cc57 implements Function {
    private final /* synthetic */ Function1 function;

    public C2127x9ee4cc57(Function1 function) {
        Intrinsics.checkNotNullParameter(function, "function");
        this.function = function;
    }

    @Override // io.reactivex.functions.Function
    public final /* synthetic */ Object apply(Object obj) {
        return this.function.invoke(obj);
    }
}
