package com.iMe.p030ui.wallet.home.tabs.crypto;

import io.reactivex.functions.Function;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ObservableExt.kt */
/* renamed from: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoPresenter$inlined$sam$i$io_reactivex_functions_Function$0 */
/* loaded from: classes4.dex */
public final /* synthetic */ class C2357x21775993 implements Function {
    private final /* synthetic */ Function1 function;

    public C2357x21775993(Function1 function) {
        Intrinsics.checkNotNullParameter(function, "function");
        this.function = function;
    }

    @Override // io.reactivex.functions.Function
    public final /* synthetic */ Object apply(Object obj) {
        return this.function.invoke(obj);
    }
}
