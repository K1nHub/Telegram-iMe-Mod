package com.iMe.storage.domain.utils.extentions;

import io.reactivex.functions.Function;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ObservableExt.kt */
/* loaded from: classes4.dex */
public final /* synthetic */ class ObservableExtKt$sam$i$io_reactivex_functions_Function$0 implements Function {
    private final /* synthetic */ Function1 function;

    public ObservableExtKt$sam$i$io_reactivex_functions_Function$0(Function1 function) {
        Intrinsics.checkNotNullParameter(function, "function");
        this.function = function;
    }

    @Override // io.reactivex.functions.Function
    public final /* synthetic */ Object apply(Object obj) {
        return this.function.invoke(obj);
    }
}
