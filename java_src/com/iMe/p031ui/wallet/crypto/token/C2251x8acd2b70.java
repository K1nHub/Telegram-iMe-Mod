package com.iMe.p031ui.wallet.crypto.token;

import io.reactivex.functions.Function;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ObservableExt.kt */
/* renamed from: com.iMe.ui.wallet.crypto.token.TokenManagementPresenter$inlined$sam$i$io_reactivex_functions_Function$0 */
/* loaded from: classes6.dex */
public final /* synthetic */ class C2251x8acd2b70 implements Function {
    private final /* synthetic */ Function1 function;

    public C2251x8acd2b70(Function1 function) {
        Intrinsics.checkNotNullParameter(function, "function");
        this.function = function;
    }

    @Override // io.reactivex.functions.Function
    public final /* synthetic */ Object apply(Object obj) {
        return this.function.invoke(obj);
    }
}
