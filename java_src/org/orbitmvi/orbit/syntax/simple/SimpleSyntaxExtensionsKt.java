package org.orbitmvi.orbit.syntax.simple;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.orbitmvi.orbit.ContainerHost;
import org.orbitmvi.orbit.internal.BlockingKt;
/* compiled from: SimpleSyntaxExtensions.kt */
/* loaded from: classes6.dex */
public final class SimpleSyntaxExtensionsKt {
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <S, SE> java.lang.Object reduce(org.orbitmvi.orbit.syntax.simple.SimpleSyntax<S, SE> r4, final kotlin.jvm.functions.Function1<? super org.orbitmvi.orbit.syntax.simple.SimpleContext<S>, ? extends S> r5, kotlin.coroutines.Continuation<? super kotlin.Unit> r6) {
        /*
            boolean r0 = r6 instanceof org.orbitmvi.orbit.syntax.simple.SimpleSyntaxExtensionsKt$reduce$1
            if (r0 == 0) goto L13
            r0 = r6
            org.orbitmvi.orbit.syntax.simple.SimpleSyntaxExtensionsKt$reduce$1 r0 = (org.orbitmvi.orbit.syntax.simple.SimpleSyntaxExtensionsKt$reduce$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            org.orbitmvi.orbit.syntax.simple.SimpleSyntaxExtensionsKt$reduce$1 r0 = new org.orbitmvi.orbit.syntax.simple.SimpleSyntaxExtensionsKt$reduce$1
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r4 = r0.L$0
            org.orbitmvi.orbit.syntax.ContainerContext r4 = (org.orbitmvi.orbit.syntax.ContainerContext) r4
            kotlin.ResultKt.throwOnFailure(r6)
            goto L50
        L2d:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L35:
            kotlin.ResultKt.throwOnFailure(r6)
            org.orbitmvi.orbit.syntax.ContainerContext r4 = r4.getContainerContext()
            kotlin.jvm.functions.Function2 r6 = r4.getReduce()
            org.orbitmvi.orbit.syntax.simple.SimpleSyntaxExtensionsKt$reduce$2$1 r2 = new org.orbitmvi.orbit.syntax.simple.SimpleSyntaxExtensionsKt$reduce$2$1
            r2.<init>()
            r0.L$0 = r4
            r0.label = r3
            java.lang.Object r4 = r6.invoke(r2, r0)
            if (r4 != r1) goto L50
            return r1
        L50:
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: org.orbitmvi.orbit.syntax.simple.SimpleSyntaxExtensionsKt.reduce(org.orbitmvi.orbit.syntax.simple.SimpleSyntax, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static final <S, SE> Object postSideEffect(SimpleSyntax<S, SE> simpleSyntax, SE se, Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object invoke = simpleSyntax.getContainerContext().getPostSideEffect().invoke(se, continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return invoke == coroutine_suspended ? invoke : Unit.INSTANCE;
    }

    public static /* synthetic */ void intent$default(ContainerHost containerHost, boolean z, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        intent(containerHost, z, function2);
    }

    public static final <STATE, SIDE_EFFECT> void intent(ContainerHost<STATE, SIDE_EFFECT> containerHost, boolean z, Function2<? super SimpleSyntax<STATE, SIDE_EFFECT>, ? super Continuation<? super Unit>, ? extends Object> transformer) {
        Intrinsics.checkNotNullParameter(containerHost, "<this>");
        Intrinsics.checkNotNullParameter(transformer, "transformer");
        BlockingKt.runBlocking(new SimpleSyntaxExtensionsKt$intent$1(containerHost, z, transformer, null));
    }
}
