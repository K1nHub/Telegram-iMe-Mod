package com.iMe.utils.extentions.p033rx;

import io.reactivex.functions.Consumer;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.utils.extentions.rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0 */
/* loaded from: classes4.dex */
public final class RxExtKt$sam$i$io_reactivex_functions_Consumer$0 implements Consumer {
    private final /* synthetic */ Function1 function;

    public RxExtKt$sam$i$io_reactivex_functions_Consumer$0(Function1 function) {
        Intrinsics.checkNotNullParameter(function, "function");
        this.function = function;
    }

    @Override // io.reactivex.functions.Consumer
    public final /* synthetic */ void accept(Object obj) {
        this.function.invoke(obj);
    }
}
