package org.orbitmvi.orbit.syntax.simple;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: SimpleSyntaxExtensions.kt */
/* loaded from: classes4.dex */
final class SimpleSyntaxExtensionsKt$reduce$2$1 extends Lambda implements Function1<S, S> {
    final /* synthetic */ Function1<SimpleContext<S>, S> $reducer;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SimpleSyntaxExtensionsKt$reduce$2$1(Function1<? super SimpleContext<S>, ? extends S> function1) {
        super(1);
        this.$reducer = function1;
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [S, java.lang.Object] */
    @Override // kotlin.jvm.functions.Function1
    public final S invoke(S reducerState) {
        Intrinsics.checkNotNullParameter(reducerState, "reducerState");
        return this.$reducer.invoke(new SimpleContext(reducerState));
    }
}
