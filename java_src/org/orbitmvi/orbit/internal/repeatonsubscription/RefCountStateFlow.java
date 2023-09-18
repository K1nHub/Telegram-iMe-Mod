package org.orbitmvi.orbit.internal.repeatonsubscription;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.StateFlow;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RefCountStateFlow.kt */
/* loaded from: classes6.dex */
public final class RefCountStateFlow<T> implements StateFlow<T> {
    private final SubscribedCounter subscribedCounter;
    private final StateFlow<T> upStream;

    /* JADX WARN: Multi-variable type inference failed */
    public RefCountStateFlow(SubscribedCounter subscribedCounter, StateFlow<? extends T> upStream) {
        Intrinsics.checkNotNullParameter(subscribedCounter, "subscribedCounter");
        Intrinsics.checkNotNullParameter(upStream, "upStream");
        this.subscribedCounter = subscribedCounter;
        this.upStream = upStream;
    }

    @Override // kotlinx.coroutines.flow.StateFlow
    public T getValue() {
        return this.upStream.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x007a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0091 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:48:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v18 */
    /* JADX WARN: Type inference failed for: r8v7 */
    @Override // kotlinx.coroutines.flow.SharedFlow, kotlinx.coroutines.flow.Flow
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object collect(kotlinx.coroutines.flow.FlowCollector<? super T> r8, kotlin.coroutines.Continuation<?> r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof org.orbitmvi.orbit.internal.repeatonsubscription.RefCountStateFlow$collect$1
            if (r0 == 0) goto L13
            r0 = r9
            org.orbitmvi.orbit.internal.repeatonsubscription.RefCountStateFlow$collect$1 r0 = (org.orbitmvi.orbit.internal.repeatonsubscription.RefCountStateFlow$collect$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            org.orbitmvi.orbit.internal.repeatonsubscription.RefCountStateFlow$collect$1 r0 = new org.orbitmvi.orbit.internal.repeatonsubscription.RefCountStateFlow$collect$1
            r0.<init>(r7, r9)
        L18:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 0
            r4 = 3
            r5 = 2
            r6 = 1
            if (r2 == 0) goto L58
            if (r2 == r6) goto L48
            if (r2 == r5) goto L3c
            if (r2 == r4) goto L34
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L34:
            java.lang.Object r8 = r0.L$0
            java.lang.Throwable r8 = (java.lang.Throwable) r8
            kotlin.ResultKt.throwOnFailure(r9)
            goto L92
        L3c:
            java.lang.Object r8 = r0.L$0
            org.orbitmvi.orbit.internal.repeatonsubscription.RefCountStateFlow r8 = (org.orbitmvi.orbit.internal.repeatonsubscription.RefCountStateFlow) r8
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L44
            goto L7b
        L44:
            r9 = move-exception
            r2 = r8
            r8 = r9
            goto L83
        L48:
            java.lang.Object r8 = r0.L$1
            kotlinx.coroutines.flow.FlowCollector r8 = (kotlinx.coroutines.flow.FlowCollector) r8
            java.lang.Object r2 = r0.L$0
            org.orbitmvi.orbit.internal.repeatonsubscription.RefCountStateFlow r2 = (org.orbitmvi.orbit.internal.repeatonsubscription.RefCountStateFlow) r2
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L56
            r9 = r8
            r8 = r2
            goto L6c
        L56:
            r8 = move-exception
            goto L83
        L58:
            kotlin.ResultKt.throwOnFailure(r9)
            org.orbitmvi.orbit.internal.repeatonsubscription.SubscribedCounter r9 = r7.subscribedCounter     // Catch: java.lang.Throwable -> L81
            r0.L$0 = r7     // Catch: java.lang.Throwable -> L81
            r0.L$1 = r8     // Catch: java.lang.Throwable -> L81
            r0.label = r6     // Catch: java.lang.Throwable -> L81
            java.lang.Object r9 = r9.increment(r0)     // Catch: java.lang.Throwable -> L81
            if (r9 != r1) goto L6a
            return r1
        L6a:
            r9 = r8
            r8 = r7
        L6c:
            kotlinx.coroutines.flow.StateFlow<T> r2 = r8.upStream     // Catch: java.lang.Throwable -> L44
            r0.L$0 = r8     // Catch: java.lang.Throwable -> L44
            r0.L$1 = r3     // Catch: java.lang.Throwable -> L44
            r0.label = r5     // Catch: java.lang.Throwable -> L44
            java.lang.Object r9 = r2.collect(r9, r0)     // Catch: java.lang.Throwable -> L44
            if (r9 != r1) goto L7b
            return r1
        L7b:
            kotlin.KotlinNothingValueException r9 = new kotlin.KotlinNothingValueException     // Catch: java.lang.Throwable -> L44
            r9.<init>()     // Catch: java.lang.Throwable -> L44
            throw r9     // Catch: java.lang.Throwable -> L44
        L81:
            r8 = move-exception
            r2 = r7
        L83:
            org.orbitmvi.orbit.internal.repeatonsubscription.SubscribedCounter r9 = r2.subscribedCounter
            r0.L$0 = r8
            r0.L$1 = r3
            r0.label = r4
            java.lang.Object r9 = r9.decrement(r0)
            if (r9 != r1) goto L92
            return r1
        L92:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: org.orbitmvi.orbit.internal.repeatonsubscription.RefCountStateFlow.collect(kotlinx.coroutines.flow.FlowCollector, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
