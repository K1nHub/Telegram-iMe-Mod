package com.iMe.feature.socialMedias;

import io.reactivex.functions.Function;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.feature.socialMedias.SocialRepositoryImpl$inlined$sam$i$io_reactivex_functions_Function$0 */
/* loaded from: classes3.dex */
public final class C1478x2827ffdb implements Function {
    private final /* synthetic */ Function1 function;

    public C1478x2827ffdb(Function1 function) {
        Intrinsics.checkNotNullParameter(function, "function");
        this.function = function;
    }

    @Override // io.reactivex.functions.Function
    public final /* synthetic */ Object apply(Object obj) {
        return this.function.invoke(obj);
    }
}
