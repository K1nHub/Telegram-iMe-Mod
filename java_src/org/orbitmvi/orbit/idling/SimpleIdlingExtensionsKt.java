package org.orbitmvi.orbit.idling;
/* compiled from: SimpleIdlingExtensions.kt */
/* loaded from: classes4.dex */
public final class SimpleIdlingExtensionsKt {
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0058  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <STATE, SIDE_EFFECT> java.lang.Object withIdling(org.orbitmvi.orbit.syntax.ContainerContext<STATE, SIDE_EFFECT> r4, boolean r5, kotlin.jvm.functions.Function2<? super org.orbitmvi.orbit.syntax.ContainerContext<STATE, SIDE_EFFECT>, ? super kotlin.coroutines.Continuation<? super kotlin.Unit>, ? extends java.lang.Object> r6, kotlin.coroutines.Continuation<? super kotlin.Unit> r7) {
        /*
            boolean r0 = r7 instanceof org.orbitmvi.orbit.idling.SimpleIdlingExtensionsKt$withIdling$1
            if (r0 == 0) goto L13
            r0 = r7
            org.orbitmvi.orbit.idling.SimpleIdlingExtensionsKt$withIdling$1 r0 = (org.orbitmvi.orbit.idling.SimpleIdlingExtensionsKt$withIdling$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            org.orbitmvi.orbit.idling.SimpleIdlingExtensionsKt$withIdling$1 r0 = new org.orbitmvi.orbit.idling.SimpleIdlingExtensionsKt$withIdling$1
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            boolean r5 = r0.Z$0
            java.lang.Object r4 = r0.L$0
            org.orbitmvi.orbit.syntax.ContainerContext r4 = (org.orbitmvi.orbit.syntax.ContainerContext) r4
            kotlin.ResultKt.throwOnFailure(r7)
            goto L54
        L2f:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L37:
            kotlin.ResultKt.throwOnFailure(r7)
            if (r5 == 0) goto L47
            org.orbitmvi.orbit.Container$Settings r7 = r4.getSettings()
            org.orbitmvi.orbit.idling.IdlingResource r7 = r7.getIdlingRegistry()
            r7.increment()
        L47:
            r0.L$0 = r4
            r0.Z$0 = r5
            r0.label = r3
            java.lang.Object r6 = r6.invoke(r4, r0)
            if (r6 != r1) goto L54
            return r1
        L54:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            if (r5 == 0) goto L63
            org.orbitmvi.orbit.Container$Settings r4 = r4.getSettings()
            org.orbitmvi.orbit.idling.IdlingResource r4 = r4.getIdlingRegistry()
            r4.decrement()
        L63:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: org.orbitmvi.orbit.idling.SimpleIdlingExtensionsKt.withIdling(org.orbitmvi.orbit.syntax.ContainerContext, boolean, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
