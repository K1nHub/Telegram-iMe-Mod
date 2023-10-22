package com.iMe.i_staking.datasource;

import io.reactivex.functions.Function;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ObservableExt.kt */
/* renamed from: com.iMe.i_staking.datasource.StakingDataSourceImpl$inlined$sam$i$io_reactivex_functions_Function$0 */
/* loaded from: classes3.dex */
public final /* synthetic */ class C1472xdf81e200 implements Function {
    private final /* synthetic */ Function1 function;

    public C1472xdf81e200(Function1 function) {
        Intrinsics.checkNotNullParameter(function, "function");
        this.function = function;
    }

    @Override // io.reactivex.functions.Function
    public final /* synthetic */ Object apply(Object obj) {
        return this.function.invoke(obj);
    }
}
