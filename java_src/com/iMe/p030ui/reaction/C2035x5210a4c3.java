package com.iMe.p030ui.reaction;

import io.reactivex.functions.Function;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ObservableExt.kt */
/* renamed from: com.iMe.ui.reaction.ReactionPresenter$inlined$sam$i$io_reactivex_functions_Function$0 */
/* loaded from: classes3.dex */
public final /* synthetic */ class C2035x5210a4c3 implements Function {
    private final /* synthetic */ Function1 function;

    public C2035x5210a4c3(Function1 function) {
        Intrinsics.checkNotNullParameter(function, "function");
        this.function = function;
    }

    @Override // io.reactivex.functions.Function
    public final /* synthetic */ Object apply(Object obj) {
        return this.function.invoke(obj);
    }
}
